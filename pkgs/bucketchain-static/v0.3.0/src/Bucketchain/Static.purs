module Bucketchain.Static
  ( Options
  , withStatic
  )where

import Prelude

import Bucketchain.Http (Http, requestMethod, requestURL, setHeader, setStatusCode)
import Bucketchain.Middleware (Middleware)
import Bucketchain.ResponseBody (fromReadable)
import Bucketchain.Static.ContentType (contentTypeFromPath)
import Control.Monad.Error.Class (throwError)
import Control.Monad.Reader (ask)
import Data.Either (Either(..))
import Data.Foldable (elem)
import Data.Int (ceil)
import Data.JSDate (toUTCString)
import Data.Maybe (Maybe(..), fromMaybe)
import Data.Newtype (unwrap)
import Data.Nullable (toMaybe)
import Data.Time.Duration (Seconds)
import Effect (Effect)
import Effect.Aff (attempt)
import Effect.Aff.Class (liftAff)
import Effect.Class (liftEffect)
import Effect.Exception (Error)
import Node.FS.Aff (stat)
import Node.FS.Stats (Stats(..))
import Node.FS.Stream (createReadStream)
import Node.Path (resolve)
import Node.URL as URL

-- | Middleware options.
-- |
-- | - `root` is root directory.
-- | - `maxAge` is `max-age` of `Cache-Control`. It should set seconds.
type Options =
  { root :: String
  , maxAge :: Seconds
  }

-- | Static file server middleware.
withStatic :: Options -> Middleware
withStatic opts next = do
  http <- ask
  if isHeadOrGet http
    then do
      path <- liftEffect $ fullPath opts http
      result <- liftAff $ attempt $ stat path
      case result of
        Left err ->
          if elem (code err) [ "ENOENT", "ENAMETOOLONG", "ENOTDIR" ]
            then next
            else throwError err
        Right (Stats stats) -> liftEffect do
          setHeader http "Content-Type" $ contentTypeFromPath path
          setHeader http "Last-Modified" $ toUTCString stats.mtime
          setHeader http "Cache-Control"
            $ "max-age=" <> (show $ ceil $ unwrap $ opts.maxAge)
          setStatusCode http 200
          if isHead http
            then pure Nothing
            else Just <<< fromReadable <$> createReadStream path
    else next

fullPath :: Options -> Http -> Effect String
fullPath { root } http = resolve [ root ] $ "." <> path
  where
    path =
      fromMaybe "/"
        $ toMaybe
        $ _.pathname
        $ URL.parse
        $ requestURL http

isHeadOrGet :: Http -> Boolean
isHeadOrGet http =
  isHead http || requestMethod http == "GET"

isHead :: Http -> Boolean
isHead http = requestMethod http == "HEAD"

foreign import code :: Error -> String
