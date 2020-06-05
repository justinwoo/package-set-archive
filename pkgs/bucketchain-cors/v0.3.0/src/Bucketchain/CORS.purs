module Bucketchain.CORS
  ( AllowOrigins(..)
  , AllowCredentials
  , MaxAge
  , AllowMethods
  , AllowHeaders(..)
  , ExposeHeaders
  , Options
  , defaultOptions
  , withCORS
  ) where

import Prelude

import Bucketchain.Header.Vary (addVary)
import Bucketchain.Http (Http, requestHeaders, requestMethod, setHeader, setStatusCode)
import Bucketchain.Middleware (Middleware)
import Control.Monad.Reader (ask)
import Data.Array (length)
import Data.Either (Either(..))
import Data.Foldable (elem)
import Data.HTTP.Method (Method(..), fromString)
import Data.Int (ceil)
import Data.Maybe (Maybe(..))
import Data.String (joinWith)
import Data.Time.Duration (Seconds(..))
import Effect (Effect)
import Effect.Class (liftEffect)
import Foreign.Object (lookup)

-- | The type of `Access-Control-Allow-Origin`.
data AllowOrigins
  = AnyOrigin
  | Origins (Array String)

-- | The type of `Access-Control-Allow-Credentials`.
type AllowCredentials = Boolean

-- | The type of `Access-Control-Max-Age`.
type MaxAge = Seconds

-- | The type of `Access-Control-Allow-Methods`.
type AllowMethods = Array Method

-- | The type of `Access-Control-Allow-Headers`.
data AllowHeaders
  = AnyHeader
  | Headers (Array String)

-- | The type of `Access-Control-Expose-Headers`.
type ExposeHeaders = Array String

-- | The type of CORS options.
type Options =
  { origins :: AllowOrigins
  , credentials :: AllowCredentials
  , maxAge :: MaxAge
  , methods :: AllowMethods
  , allowHeaders :: AllowHeaders
  , exposeHeaders :: ExposeHeaders
  }

-- | Default options.
-- |
-- | - origins: `AnyOrigin`
-- | - credentials: `false`
-- | - maxAge: `1728000`
-- | - methods: `[ GET, HEAD, PUT, POST, DELETE, PATCH ]`
-- | - allowHeaders: `AnyHeader`
-- | - exposeHeaders: `[]`
defaultOptions :: Options
defaultOptions =
  { origins: AnyOrigin
  , credentials: false
  , maxAge: Seconds 1728000.0
  , methods: [ GET, HEAD, PUT, POST, DELETE, PATCH ]
  , allowHeaders: AnyHeader
  , exposeHeaders: []
  }

-- | The CORS middleware.
withCORS :: Options -> Middleware
withCORS opts next = do
  http <- ask
  liftEffect $ addVary http "Origin"
  case lookup "origin" $ requestHeaders http of
    Nothing -> next
    Just origin -> do
      liftEffect $ setAllowOrigin http opts.origins origin
      liftEffect $ setAllowCredentials http opts.credentials
      case fromString (requestMethod http) of
        Left OPTIONS -> liftEffect do
          setMaxAge http opts.maxAge
          setAllowMethods http opts.methods
          setAllowHeaders http opts.allowHeaders
          setStatusCode http 204
          pure Nothing
        _ -> do
          liftEffect $ setExposeHeaders http opts.exposeHeaders
          next

setAllowOrigin :: Http -> AllowOrigins -> String -> Effect Unit
setAllowOrigin http AnyOrigin _ = setHeader http "Access-Control-Allow-Origin" "*"
setAllowOrigin http (Origins origins) reqOrigin =
  when (elem reqOrigin origins) $ setHeader http "Access-Control-Allow-Origin" reqOrigin

setAllowCredentials :: Http -> AllowCredentials -> Effect Unit
setAllowCredentials http true = setHeader http "Access-Control-Allow-Credentials" "true"
setAllowCredentials _ _ = pure unit

setMaxAge :: Http -> MaxAge -> Effect Unit
setMaxAge http (Seconds sec) = setHeader http "Access-Control-Max-Age" $ show (ceil sec)

setAllowMethods :: Http -> AllowMethods -> Effect Unit
setAllowMethods http methods =
  setHeader http "Access-Control-Allow-Methods" $ joinWith ", " $ show <$> methods

setAllowHeaders :: Http -> AllowHeaders -> Effect Unit
setAllowHeaders http AnyHeader =
  case lookup "access-control-request-headers" $ requestHeaders http of
    Nothing -> pure unit
    Just x -> setHeader http "Access-Control-Allow-Headers" x
setAllowHeaders http (Headers xs) =
  setHeader http "Access-Control-Allow-Headers" $ joinWith ", " xs

setExposeHeaders :: Http -> ExposeHeaders -> Effect Unit
setExposeHeaders http xs =
  when (length xs > 0) $ setHeader http "Access-Control-Expose-Headers" $ joinWith ", " xs
