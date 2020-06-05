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
import Foreign.Object (singleton, fromFoldable)
import Main (server)
import Node.HTTP (Server, listen, close)
import Node.HTTP.Client as C
import Test.Assert (assert)

main :: Effect Unit
main = do
  s <- server
  listen s opts $ runAff_ (handleAff s) do
    testGetFresh
    testGetUnfresh
    testHeadFresh
    testHeadUnfresh
    testPost
    test404
    testNoCache
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

testGetFresh :: Aff Unit
testGetFresh = do
  res <- request opts
  body <- convertToString $ C.responseAsStream res
  liftEffect do
    assert $ C.statusCode res == 304
    assert $ body == ""
  where
    opts = C.port := 3000
        <> C.method := "GET"
        <> C.path := "/index.css"
        <> C.headers := headers
    headers =
      C.RequestHeaders $ singleton "If-Modified-Since" "Wed, 21 Oct 2016 07:28:00 GMT"

testGetUnfresh :: Aff Unit
testGetUnfresh = do
  res <- request opts
  body <- convertToString $ C.responseAsStream res
  liftEffect do
    assert $ C.statusCode res == 200
    assert $ body == "html, body { height: 100%; background-color: yellow; }"
  where
    opts = C.port := 3000
        <> C.method := "GET"
        <> C.path := "/index.css"
        <> C.headers := headers
    headers =
      C.RequestHeaders $ singleton "If-Modified-Since" "Wed, 21 Oct 2014 07:28:00 GMT"

testHeadFresh :: Aff Unit
testHeadFresh = do
  res <- request opts
  body <- convertToString $ C.responseAsStream res
  liftEffect do
    assert $ C.statusCode res == 304
    assert $ body == ""
  where
    opts = C.port := 3000
        <> C.method := "HEAD"
        <> C.path := "/index.css"
        <> C.headers := headers
    headers =
      C.RequestHeaders $ singleton "If-Modified-Since" "Wed, 21 Oct 2016 07:28:00 GMT"

testHeadUnfresh :: Aff Unit
testHeadUnfresh = do
  res <- request opts
  body <- convertToString $ C.responseAsStream res
  liftEffect do
    assert $ C.statusCode res == 200
    assert $ body == ""
  where
    opts = C.port := 3000
        <> C.method := "HEAD"
        <> C.path := "/index.css"
        <> C.headers := headers
    headers =
      C.RequestHeaders $ singleton "If-Modified-Since" "Wed, 21 Oct 2014 07:28:00 GMT"

testPost :: Aff Unit
testPost = do
  res <- request opts
  body <- convertToString $ C.responseAsStream res
  liftEffect do
    assert $ C.statusCode res == 201
    assert $ body == "{ id: 1 }"
  where
    opts = C.port := 3000
        <> C.method := "POST"
        <> C.path := "/items"
        <> C.headers := headers
    headers =
      C.RequestHeaders $ singleton "If-Modified-Since" "Wed, 21 Oct 2016 07:28:00 GMT"

test404 :: Aff Unit
test404 = do
  res <- request opts
  body <- convertToString $ C.responseAsStream res
  liftEffect do
    assert $ C.statusCode res == 404
    assert $ body == ""
  where
    opts = C.port := 3000
        <> C.method := "GET"
        <> C.path := "/items"
        <> C.headers := headers
    headers =
      C.RequestHeaders $ singleton "If-Modified-Since" "Wed, 21 Oct 2016 07:28:00 GMT"

testNoCache :: Aff Unit
testNoCache = do
  res <- request opts
  body <- convertToString $ C.responseAsStream res
  liftEffect do
    assert $ C.statusCode res == 200
    assert $ body == "html, body { height: 100%; background-color: yellow; }"
  where
    opts = C.port := 3000
        <> C.method := "GET"
        <> C.path := "/index.css"
        <> C.headers := headers
    headers =
      C.RequestHeaders $ fromFoldable
        [ Tuple "If-Modified-Since" "Wed, 21 Oct 2016 07:28:00 GMT"
        , Tuple "Cache-Control" "no-cache"
        ]
