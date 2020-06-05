module Bucketchain.Logger.HTTP.Token
  ( Token
  , token
  , label
  , tokenizer
  , date
  , httpVersion
  , url
  , method
  , referrer
  , userAgent
  , remoteAddr
  , status
  , responseTime
  ) where

import Prelude

import Bucketchain.Http as Http
import Bucketchain.Logger.HTTP.Tokenizer (Tokenizer)
import Control.Monad.Reader (ask)
import Data.JSDate (toISOString, now, getTime)
import Data.Maybe (fromMaybe)
import Effect.Class (liftEffect)
import Foreign.Object (lookup)
import Node.HTTP (Request)

-- | The type of a token for logger.
-- |
-- | It has a label and a tokenizer.
data Token = Token String (Http.Http -> Tokenizer String)

-- | Constructor function of `Token`.
token :: String -> (Http.Http -> Tokenizer String) -> Token
token = Token

-- | Get label of token.
label :: Token -> String
label (Token x _) = x

-- | Get tokenizer of token.
tokenizer :: Token -> (Http.Http -> Tokenizer String)
tokenizer (Token _ x) = x

-- | A token of current date formetted ISO.
date :: Token
date = token "date" \_ -> do
  t <- ask
  liftEffect $ toISOString t

-- | A token of HTTP version.
httpVersion :: Token
httpVersion = token "http-version" $ pure <<< Http.httpVersion

-- | A token of request url.
url :: Token
url = token "url" $ pure <<< Http.requestOriginalURL

-- | A token of request method.
method :: Token
method = token "method" $ pure <<< Http.requestMethod

-- | A token of referrer.
referrer :: Token
referrer = token "referrer" \http -> do
  pure $ fromMaybe
    (fromMaybe "-" $ lookup "referrer" $ Http.requestHeaders http)
    $ lookup "referer" $ Http.requestHeaders http

-- | A token of user agent.
userAgent :: Token
userAgent = token "user-agent" \http -> do
  pure $ fromMaybe "-" $ lookup "user-agent" $ Http.requestHeaders http

-- | A token of remote address.
remoteAddr :: Token
remoteAddr = token "remote-addr" $ pure <<< _remoteAddress <<< Http.toRequest

-- | A token of status code.
status :: Token
status = token "status" $ pure <<< show <<< Http.statusCode

-- | A token of response time.
responseTime :: Token
responseTime = token "response-time" \http -> do
  t <- ask
  t' <- liftEffect now
  pure $ (show $ getTime t' - getTime t) <> "ms"

foreign import _remoteAddress :: Request -> String
