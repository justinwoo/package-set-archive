module Main where

import Prelude

import Bucketchain (createServer, listen)
import Bucketchain.Conditional (withConditionalGet)
import Bucketchain.Http (requestMethod, requestURL, setHeader, setStatusCode)
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
server = createServer $ withConditionalGet
  <<< middleware1
  <<< middleware2
  <<< middleware3
  <<< middleware4
  <<< middleware5

opts :: ListenOptions
opts =
  { hostname: "127.0.0.1"
  , port: 3000
  , backlog: Nothing
  }

middleware1 :: Middleware
middleware1 next = do
  http <- ask
  if requestMethod http == "GET" && requestURL http == "/"
    then liftEffect do
      setHeader http "Content-Type" "text/html; charset=utf-8"
      setStatusCode http 200
      Just <$> body """
        <!DOCTYPE html>
        <html>
          <head>
            <title>TEST</title>
            <meta charset="UTF-8">
            <link href="/index.css" rel="stylesheet">
          </head>
          <body>
          </body>
        </html>
      """
    else next

middleware2 :: Middleware
middleware2 next = do
  http <- ask
  if requestMethod http == "GET" && requestURL http == "/index.css"
    then liftEffect do
      setHeader http "Content-Type" "text/css; charset=utf-8"
      setHeader http "Last-Modified" "Wed, 21 Oct 2015 07:28:00 GMT"
      setHeader http "Cache-Control" "max-age=86400"
      setStatusCode http 200
      Just <$> body "html, body { height: 100%; background-color: yellow; }"
    else next

middleware3 :: Middleware
middleware3 next = do
  http <- ask
  if requestMethod http == "HEAD" && requestURL http == "/index.css"
    then liftEffect do
      setHeader http "Content-Type" "text/css; charset=utf-8"
      setHeader http "Last-Modified" "Wed, 21 Oct 2015 07:28:00 GMT"
      setHeader http "Cache-Control" "max-age=86400"
      setStatusCode http 200
      pure Nothing
    else next

middleware4 :: Middleware
middleware4 next = do
  http <- ask
  if requestMethod http == "POST" && requestURL http == "/items"
    then liftEffect do
      setHeader http "Content-Type" "application/json; charset=utf-8"
      setHeader http "Last-Modified" "Wed, 21 Oct 2015 07:28:00 GMT"
      setHeader http "Cache-Control" "max-age=86400"
      setStatusCode http 201
      Just <$> body "{ id: 1 }"
    else next

middleware5 :: Middleware
middleware5 next = do
  http <- ask
  if requestMethod http == "GET" && requestURL http == "/items"
    then liftEffect do
      setHeader http "Content-Type" "application/json; charset=utf-8"
      setHeader http "Last-Modified" "Wed, 21 Oct 2015 07:28:00 GMT"
      setHeader http "Cache-Control" "max-age=86400"
      setStatusCode http 404
      pure Nothing
    else next
