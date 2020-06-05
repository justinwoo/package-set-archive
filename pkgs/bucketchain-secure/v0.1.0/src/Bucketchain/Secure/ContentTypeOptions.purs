module Bucketchain.Secure.ContentTypeOptions where

import Prelude

import Bucketchain.Http (setHeader)
import Bucketchain.Middleware (Middleware)
import Control.Monad.Reader (ask)
import Effect.Class (liftEffect)

-- | Set `X-Content-Type-Options`.
withContentTypeOptions :: Middleware
withContentTypeOptions next = do
  http <- ask
  liftEffect $ setHeader http "X-Content-Type-Options" "nosniff"
  next
