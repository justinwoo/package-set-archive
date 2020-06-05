module Bucketchain.Health where

import Prelude

import Bucketchain.Http (requestMethod, requestURL, setHeader, setStatusCode)
import Bucketchain.Middleware (Middleware)
import Bucketchain.ResponseBody (body)
import Control.Monad.Reader (ask)
import Data.Maybe (Maybe(..))
import Effect.Class (liftEffect)

type Path = String

withHealth :: Path -> Middleware
withHealth path next = do
  http <- ask
  if requestMethod http == "GET" && requestURL http == path
    then liftEffect do
      setHeader http "Content-Type" "text/plain; charset=utf-8"
      setStatusCode http 200
      Just <$> body "Healthy"
    else next
