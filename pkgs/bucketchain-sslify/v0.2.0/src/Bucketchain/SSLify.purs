module Bucketchain.SSLify
  ( Options
  , defaultOptions
  , withForceHttps
  ) where

import Prelude

import Bucketchain.Http (Http, toRequest, requestHeaders, requestURL, setHeader, setStatusCode)
import Bucketchain.Middleware (Middleware)
import Control.Monad.Reader (ask)
import Data.Maybe (Maybe(..), fromMaybe)
import Effect.Class (liftEffect)
import Foreign.Object (lookup)
import Node.HTTP (Request)

-- | Force https options.
-- |
-- | - `hostname` is redirect target hostname. If `Nothing`, `hostname` is detected from `:authority` header or `Host` header.
-- | - `trustProtoHeader` is a option trusting `X-Forwarded-Proto` header to check that protocol is https.
type Options =
  { hostname :: Maybe String
  , trustProtoHeader :: Boolean
  }

-- | Default options.
-- |
-- | - `hostname` is `Nothing`.
-- | - `trustProtoHeader` is `false`.
defaultOptions :: Options
defaultOptions =
  { hostname: Nothing
  , trustProtoHeader: false
  }

-- | Force https middleware.
withForceHttps :: Options -> Middleware
withForceHttps opts next = do
  http <- ask
  if isHttps opts http
    then next
    else liftEffect do
      setHeader http "Location" $ "https://" <> host opts http <> requestURL http
      setStatusCode http 301
      pure Nothing

host :: Options -> Http -> String
host { hostname } http =
  case hostname of
    Just x -> x
    Nothing ->
      fromMaybe (fromMaybe "" hostHeader) authorityHeader
  where
    hostHeader = lookup "host" $ requestHeaders http
    authorityHeader = lookup ":authority" $ requestHeaders http

isHttps :: Options -> Http -> Boolean
isHttps { trustProtoHeader } http =
  protocol == "https" || (trustProtoHeader && proto == "https")
  where
    protocol = requestProtocol $ toRequest http
    proto = fromMaybe "" $ lookup "x-forwarded-proto" $ requestHeaders http

foreign import requestProtocol :: Request -> String
