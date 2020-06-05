module Main where

import Prelude

import Bucketchain (createServer, listen)
import Bucketchain.Http (requestURL, requestMethod)
import Bucketchain.Logger.Error (withErrorLogger)
import Bucketchain.Logger.HTTP.LTSV (withHTTPLogger)
import Bucketchain.Logger.HTTP.Token as T
import Bucketchain.Middleware (Middleware)
import Bucketchain.ResponseBody (body)
import Control.Monad.Error.Class (throwError)
import Control.Monad.Reader (ask)
import Data.Maybe (Maybe(..))
import Effect (Effect)
import Effect.Class (liftEffect)
import Effect.Exception (error)
import Node.HTTP (ListenOptions, Server)

main :: Effect Unit
main = server >>= listen opts

server :: Effect Server
server = createServer $ middleware1 <<< middleware2 <<< middleware3

opts :: ListenOptions
opts =
  { hostname: "127.0.0.1"
  , port: 3000
  , backlog: Nothing
  }

middleware1 :: Middleware
middleware1 = withErrorLogger <<< withHTTPLogger
  [ T.date
  , T.httpVersion
  , T.url
  , T.method
  , T.referrer
  , T.userAgent
  , T.remoteAddr
  , T.status
  , T.responseTime
  ]

middleware2 :: Middleware
middleware2 next = do
  http <- ask
  if requestMethod http == "GET" && requestURL http == "/error"
    then throwError $ error "Test error!!!!!!!!!!!!!!"
    else next

middleware3 :: Middleware
middleware3 next = do
  http <- ask
  if requestMethod http == "GET" && requestURL http == "/"
    then liftEffect $ Just <$> body "Hello World"
    else next
