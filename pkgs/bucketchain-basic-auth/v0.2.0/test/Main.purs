module Test.Main where

import Prelude

import Bucketchain.Test (request)
import Data.Either (Either(..))
import Data.Maybe (Maybe(..))
import Data.Options ((:=))
import Effect (Effect)
import Effect.Aff (Aff, runAff_)
import Effect.Class (liftEffect)
import Effect.Console (log)
import Effect.Exception (Error, message)
import Foreign.Object (singleton)
import Main (server)
import Node.HTTP (Server, listen, close)
import Node.HTTP.Client as C
import Test.Assert (assert)

main :: Effect Unit
main = do
  s <- server
  listen s opts $ runAff_ (handleAff s) do
    test401
    testPassAuth
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

test401 :: Aff Unit
test401 = do
  res <- request opts
  liftEffect $ assert $ C.statusCode res == 401
  where
    opts = C.port := 3000
        <> C.method := "GET"
        <> C.path := "/"

testPassAuth :: Aff Unit
testPassAuth = do
  res <- request opts
  liftEffect $ assert $ C.statusCode res == 404
  where
    opts = C.port := 3000
        <> C.method := "GET"
        <> C.path := "/"
        <> C.headers := headers
    headers = C.RequestHeaders $ singleton "Authorization" "Basic b3Jlc2hpbnlhOnBhc3N3b3Jk"
