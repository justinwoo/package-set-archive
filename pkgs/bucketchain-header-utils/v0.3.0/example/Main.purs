module Main where

import Prelude

import Bucketchain (createServer, listen)
import Bucketchain.Header.Cookie (SameSite(..), addCookie, getCookies)
import Bucketchain.Header.Vary (addVary)
import Bucketchain.Http (requestMethod, requestURL)
import Bucketchain.Middleware (Middleware)
import Control.Monad.Reader (ask)
import Data.Maybe (Maybe(..))
import Data.Time.Duration (Seconds(..))
import Effect (Effect)
import Effect.Class (liftEffect)
import Effect.Console (log)
import Node.HTTP (ListenOptions, Server)

main :: Effect Unit
main = server >>= listen opts

server :: Effect Server
server = createServer middleware

opts :: ListenOptions
opts =
  { hostname: "127.0.0.1"
  , port: 3000
  , backlog: Nothing
  }

middleware :: Middleware
middleware next = do
  http <- ask
  if requestMethod http == "GET" && requestURL http == "/"
    then liftEffect do
      log $ show $ getCookies http
      addVary http "Accept-Encoding"
      addVary http "User-Agent"
      addVary http "User-Agent" -- Safe twice call
      addCookie http
        { key: "_test"
        , value: "test cookie"
        , domain: Nothing
        , path: Just "/"
        , maxAge: Just $ Seconds 60.0
        , secure: false
        , httpOnly: true
        , sameSite: Just Lax
        }
      pure Nothing
    else next
