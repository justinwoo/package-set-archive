module Bucketchain.Conditional
  ( withConditionalGet
  ) where

import Prelude

import Bucketchain.Http (Http, requestHeaders, requestMethod, responseHeader, setStatusCode, statusCode)
import Bucketchain.Middleware (Middleware)
import Control.Monad.Reader (ask)
import Data.JSDate (getTime, parse)
import Data.Maybe (Maybe(..), maybe)
import Data.String.Regex (test)
import Data.String.Regex.Flags (noFlags)
import Data.String.Regex.Unsafe (unsafeRegex)
import Effect (Effect)
import Effect.Class (liftEffect)
import Foreign.Object (lookup)

withConditionalGet :: Middleware
withConditionalGet next = do
  result <- next
  http <- ask
  isFresh <- liftEffect $ fresh http
  if isFresh
    then liftEffect do
      setStatusCode http 304
      pure Nothing
    else pure result

fresh :: Http -> Effect Boolean
fresh http =
  case isHeadOrGet http, isSuccessCode http, includesNoCache http, lastModified, ifModifiedSince of
    true, true, false, Just last, Just since ->
      (<=) <$> (getTime <$> parse last) <*> (getTime <$> parse since)
    _, _, _, _, _ -> pure false
  where
    ifModifiedSince = lookup "if-modified-since" $ requestHeaders http
    lastModified = responseHeader http "last-modified"

isHeadOrGet :: Http -> Boolean
isHeadOrGet http =
  method == "GET" || method == "HEAD"
  where
    method = requestMethod http

isSuccessCode :: Http -> Boolean
isSuccessCode http =
  (code >= 200 && code < 300) || code == 304
  where
    code = statusCode http

includesNoCache :: Http -> Boolean
includesNoCache http =
  maybe false check $ lookup "cache-control" $ requestHeaders http
  where
    check = test $ unsafeRegex "(?:^|,)\\s*?no-cache\\s*?(?:,|$)" noFlags
