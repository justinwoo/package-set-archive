module Test.Main where

import Prelude

import Bucketchain.Stream (convertToString)
import Bucketchain.Test (request)
import Data.Either (Either(..))
import Data.Maybe (Maybe(..))
import Data.Options ((:=))
import Data.Tuple (Tuple(..))
import Effect (Effect)
import Effect.Aff (Aff, runAff_)
import Effect.Class (liftEffect)
import Effect.Console (log)
import Effect.Exception (Error, message)
import Foreign.Object (fromFoldable, lookup)
import Main (server)
import Node.HTTP (Server, listen, close)
import Node.HTTP.Client as C
import Test.Assert (assert)

main :: Effect Unit
main = do
  s <- server
  listen s opts $ runAff_ (handleAff s) do
    testSameOrigin
    testPreflight
    testNotPreflight
  where
    opts =
      { hostname: "localhost"
      , port: 3000
      , backlog: Nothing
      }

handleAff :: Server -> Either Error Unit -> Effect Unit
handleAff _ (Left err) = do
  log $ message err
  assert false
handleAff s _ = close s $ pure unit

testSameOrigin :: Aff Unit
testSameOrigin = do
  res <- request opts
  body <- convertToString $ C.responseAsStream res
  liftEffect $ assert $ body == "Hello world."
  where
    opts = C.port := 3000
        <> C.method := "GET"
        <> C.path := "/test"

testPreflight :: Aff Unit
testPreflight = do
  res <- request opts
  body <- convertToString $ C.responseAsStream res
  liftEffect do
    assert $ body == ""
    assert $ C.statusCode res == 204
    let hs = C.responseHeaders res
    assert $ lookup "access-control-allow-origin" hs == Just "http://localhost:3000"
    assert $ lookup "access-control-allow-credentials" hs == Just "true"
    assert $ lookup "access-control-max-age" hs == Just "1728000"
    assert $ lookup "access-control-allow-methods" hs == Just "GET, HEAD, PUT, POST, DELETE, PATCH"
    assert $ lookup "access-control-allow-headers" hs == Just "X-Foo, X-Bar"
  where
    opts = C.port := 3000
        <> C.method := "OPTIONS"
        <> C.path := "/test"
        <> C.headers := headers
    headers = C.RequestHeaders $ fromFoldable
      [ Tuple "Origin" "http://localhost:3000"
      , Tuple "Access-Control-Request-Headers" "X-Foo, X-Bar"
      ]

testNotPreflight :: Aff Unit
testNotPreflight = do
  res <- request opts
  body <- convertToString $ C.responseAsStream res
  liftEffect do
    assert $ body == "Hello world."
    let hs = C.responseHeaders res
    assert $ lookup "access-control-allow-origin" hs == Just "http://localhost:3000"
    assert $ lookup "access-control-allow-credentials" hs == Just "true"
    assert $ lookup "access-control-expose-headers" hs == Just "X-Foo, X-Bar"
  where
    opts = C.port := 3000
        <> C.method := "GET"
        <> C.path := "/test"
        <> C.headers := headers
    headers = C.RequestHeaders $ fromFoldable
      [ Tuple "Origin" "http://localhost:3000"
      , Tuple "Access-Control-Request-Headers" "X-Foo"
      ]
