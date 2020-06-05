module Bucketchain.Logger.Error where

import Prelude

import Bucketchain.Middleware (Middleware)
import Control.Monad.Error.Class (throwError, try)
import Data.Either (Either(..))
import Data.Maybe (fromMaybe)
import Effect.Class (liftEffect)
import Effect.Exception (stack)
import Node.Encoding (Encoding(UTF8))
import Node.Process (stdout)
import Node.Stream (writeString)

-- | Error logger. It should be set first of middleware stack.
withErrorLogger :: Middleware
withErrorLogger next = do
  result <- try next
  case result of
    Right r -> pure r
    Left err -> do
      let msg = (fromMaybe "" $ stack err) <> "\n"
      liftEffect $ void $ writeString stdout UTF8 msg $ pure unit
      throwError err
