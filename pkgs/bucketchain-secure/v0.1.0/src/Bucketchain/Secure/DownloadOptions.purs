module Bucketchain.Secure.DownloadOptions where

import Prelude

import Bucketchain.Http (setHeader)
import Bucketchain.Middleware (Middleware)
import Control.Monad.Reader (ask)
import Effect.Class (liftEffect)

-- | Set `X-Download-Options`.
withDownloadOptions :: Middleware
withDownloadOptions next = do
  http <- ask
  liftEffect $ setHeader http "X-Download-Options" "noopen"
  next
