module Test.Main where

import Prelude

import Bucketchain.Stream (convertToString)
import Bucketchain.Test (request)
import Data.Either (Either(..))
import Data.Maybe (Maybe(..), isJust)
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
import Node.FS.Stream (createReadStream)
import Test.Assert (assert)

main :: Effect Unit
main = do
  s <- server
  listen s opts $ runAff_ (handleAff s) do
    testHead
    testGet
    testUnknownFile
    testPost
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

testHead :: Aff Unit
testHead = do
  res <- request opts
  body <- convertToString $ C.responseAsStream res
  liftEffect do
    assert $ body == ""
    assert $ C.statusCode res == 200
    assert $ (lookup "content-type" $ C.responseHeaders res) == Just "image/png"
    assert $ isJust $ lookup "last-modified" $ C.responseHeaders res
    assert $ (lookup "cache-control" $ C.responseHeaders res) == Just "max-age=86400"
  where
    opts = C.port := 3000
        <> C.method := "HEAD"
        <> C.path := "/dummy.png"

testGet :: Aff Unit
testGet = do
  res <- request opts
  imgStream <- liftEffect $ createReadStream "example/public/dummy.png"
  expected <- convertToString imgStream
  body <- convertToString $ C.responseAsStream res
  liftEffect do
    assert $ body == expected
    assert $ C.statusCode res == 200
    assert $ (lookup "content-type" $ C.responseHeaders res) == Just "image/png"
    assert $ isJust $ lookup "last-modified" $ C.responseHeaders res
    assert $ (lookup "cache-control" $ C.responseHeaders res) == Just "max-age=86400"
  where
    opts = C.port := 3000
        <> C.method := "GET"
        <> C.path := "/dummy.png"

testUnknownFile :: Aff Unit
testUnknownFile = do
  res <- request opts
  liftEffect do
    assert $ C.statusCode res == 404
  where
    opts = C.port := 3000
        <> C.method := "GET"
        <> C.path := "/dummy.jpg"

testPost :: Aff Unit
testPost = do
  res <- request opts
  liftEffect do
    assert $ C.statusCode res == 404
  where
    opts = C.port := 3000
        <> C.method := "POST"
        <> C.path := "/dummy.png"
