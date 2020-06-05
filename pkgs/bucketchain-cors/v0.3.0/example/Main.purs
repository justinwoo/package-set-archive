module Main where

import Prelude

import Bucketchain (createServer, listen)
import Bucketchain.CORS (AllowOrigins(..), defaultOptions, withCORS)
import Bucketchain.Http (requestMethod, requestURL)
import Bucketchain.Middleware (Middleware)
import Bucketchain.ResponseBody (body)
import Control.Monad.Reader (ask)
import Data.Maybe (Maybe(..))
import Effect (Effect)
import Effect.Class (liftEffect)
import Node.HTTP (ListenOptions, Server)

main :: Effect Unit
main = server >>= listen opts

server :: Effect Server
server = createServer $ middleware1 <<< middleware2

opts :: ListenOptions
opts =
  { hostname: "127.0.0.1"
  , port: 3000
  , backlog: Nothing
  }

middleware1 :: Middleware
middleware1 = withCORS defaultOptions
  { origins = Origins [ "http://localhost:3000", "http://localhost:3001" ]
  , credentials = true
  , exposeHeaders = [ "X-Foo", "X-Bar" ]
  }

middleware2 :: Middleware
middleware2 next = do
  http <- ask
  if requestMethod http == "GET" && requestURL http == "/test"
    then liftEffect $ Just <$> body "Hello world."
    else next
