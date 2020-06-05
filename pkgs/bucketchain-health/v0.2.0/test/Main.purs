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
import Main (server)
import Node.HTTP (Server, listen, close)
import Node.HTTP.Client as C
import Test.Assert (assert)

main :: Effect Unit
main = do
  s <- server
  listen s opts $ runAff_ (handleAff s) do
    testHealth
    testNotHealth
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

testHealth :: Aff Unit
testHealth = do
  res <- request opts
  body <- convertToString $ C.responseAsStream res
  liftEffect do
    assert $ body == "Healthy"
    assert $ C.statusCode res == 200
  where
    opts = C.port := 3000
        <> C.method := "GET"
        <> C.path := "/health"

testNotHealth :: Aff Unit
testNotHealth = do
  res <- request opts
  liftEffect $ assert $ C.statusCode res == 404
  where
    opts = C.port := 3000
        <> C.method := "GET"
        <> C.path := "/"
