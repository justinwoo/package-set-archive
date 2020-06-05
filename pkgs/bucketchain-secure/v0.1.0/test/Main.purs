module Test.Main where

import Prelude

import Bucketchain.Test (request)
import Data.Either (Either(..))
import Data.Maybe (Maybe(..))
import Data.Options ((:=))
import Effect (Effect)
import Effect.Aff (runAff_)
import Effect.Class (liftEffect)
import Effect.Console (log)
import Effect.Exception (message)
import Foreign.Object (lookup)
import Main (server)
import Node.HTTP (close, listen)
import Node.HTTP.Client as C
import Test.Unit (test)
import Test.Unit.Assert as Assert
import Test.Unit.Main (runTest)

main :: Effect Unit
main = runTest do
  test "withSecurityHeaders" do
    s <- liftEffect $ server
    liftEffect $ listen s lopts $ runAff_ (handleAff s) do
      res <- request opts
      let hs = C.responseHeaders res
      Assert.equal (Just "nosniff")
        $ lookup "x-content-type-options" hs
      Assert.equal (Just "noopen")
        $ lookup "x-download-options" hs
      Assert.equal (Just "sameorigin")
        $ lookup "x-frame-options" hs
      Assert.equal (Just "1; mode=block")
        $ lookup "x-xss-protection" hs
      Assert.equal (Just "max-age=31536000; includeSubDomains; preload")
        $ lookup "strict-transport-security" hs
  where
    lopts =
      { hostname: "localhost"
      , port: 3000
      , backlog: Nothing
      }
    opts = C.port := 3000
        <> C.method := "GET"
        <> C.path := "/health"
    handleAff _ (Left err) = do
      log $ message err
    handleAff s _ = close s $ pure unit
