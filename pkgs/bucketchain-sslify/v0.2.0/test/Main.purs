module Test.Main where

import Prelude

import Bucketchain.Stream (convertToString)
import Bucketchain.Test (request)
import Data.Either (Either(..))
import Data.Maybe (Maybe(..))
import Data.Options ((:=))
import Effect (Effect)
import Effect.Aff (Aff, runAff_)
import Effect.Class (liftEffect)
import Effect.Console (log)
import Effect.Exception (Error, message)
import Foreign.Object (lookup, singleton)
import Main (server1)
import Node.HTTP (Server, listen, close)
import Node.HTTP.Client as C
import Test.Assert (assert)

main :: Effect Unit
main = do
  s <- server1
  listen s opts $ runAff_ (handleAff s) do
    testRedirect
    testNotRedirect
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

testRedirect :: Aff Unit
testRedirect = do
  res <- request opts
  body <- convertToString $ C.responseAsStream res
  liftEffect do
    assert $ C.statusCode res == 301
    assert $ Just "https://localhost:3000/test?foo=1" == (lookup "location" $ C.responseHeaders res)
  where
    opts = C.port := 3000
        <> C.method := "GET"
        <> C.path := "/test?foo=1"

testNotRedirect :: Aff Unit
testNotRedirect = do
  res <- request opts
  liftEffect $ assert $ C.statusCode res == 404
  where
    opts = C.port := 3000
        <> C.method := "GET"
        <> C.path := "/test?foo=1"
        <> C.headers := headers
    headers = C.RequestHeaders $ singleton "X-Forwarded-Proto" "https"
