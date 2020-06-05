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
import Foreign.Object (lookup)
import Main (server)
import Node.HTTP (Server, listen, close)
import Node.HTTP.Client as C
import Test.Assert (assert)

main :: Effect Unit
main = do
  s <- server
  listen s opts $ runAff_ (handleAff s) testHeaders
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

testHeaders :: Aff Unit
testHeaders = do
  res <- request opts
  liftEffect do
    assert $ C.statusCode res == 200
    assert $ Just "User-Agent, Accept-Encoding"  == (lookup "vary" $ C.responseHeaders res)
  where
    opts = C.port := 3000
        <> C.method := "GET"
        <> C.path := "/"
