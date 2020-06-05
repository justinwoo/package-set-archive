module Main where

import Prelude

import Bucketchain (createServer, listen)
import Bucketchain.SSLify (defaultOptions, withForceHttps)
import Bucketchain.Middleware (Middleware)
import Data.Maybe (Maybe(..))
import Effect (Effect)
import Node.HTTP (ListenOptions, Server)

main :: Effect Unit
main = server1 >>= listen opts

server1 :: Effect Server
server1 = createServer middleware1

server2 :: Effect Server
server2 = createServer middleware2

opts :: ListenOptions
opts =
  { hostname: "127.0.0.1"
  , port: 3000
  , backlog: Nothing
  }

middleware1 :: Middleware
middleware1 = withForceHttps defaultOptions
  { trustProtoHeader = true
  }

middleware2 :: Middleware
middleware2 = withForceHttps defaultOptions
  { hostname = Just "www.lvh.me:3000"
  }
