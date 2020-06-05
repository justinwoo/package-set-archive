module Bucketchain.BasicAuth where

import Prelude

import Bucketchain.Http (toRequest, setHeader, setStatusCode)
import Bucketchain.Middleware (Middleware)
import Bucketchain.ResponseBody (body)
import Control.Monad.Reader (ask)
import Data.Maybe (Maybe(..))
import Effect.Class (liftEffect)
import Node.BasicAuth (Credentials, authenticate)

type Options =
  { realm :: String
  , creds :: Credentials
  }

withBasicAuth :: Options -> Middleware
withBasicAuth opts next = do
  http <- ask
  ok <- liftEffect $ authenticate opts.creds $ toRequest http
  if ok
    then next
    else liftEffect do
      setHeader http "WWW-Authenticate" $ "Basic realm=\"" <> opts.realm <> "\""
      setHeader http "Content-Type" "text/plain; charset=utf-8"
      setStatusCode http 401
      Just <$> body "Unauthorized"
