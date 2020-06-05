module Bucketchain.Secure.FrameOptions where

import Prelude

import Bucketchain.Http (setHeader)
import Bucketchain.Middleware (Middleware)
import Control.Monad.Reader (ask)
import Effect.Class (liftEffect)

-- | A type of `X-Frame-Options`.
data FrameOptions
  = Deny
  | SameOrigin
  | AllowFrom String

instance showFrameOptions :: Show FrameOptions where
  show Deny = "deny"
  show SameOrigin = "sameorigin"
  show (AllowFrom uri) = "allow-from " <> uri

-- | Set `X-Frame-Options`.
withFrameOptions :: FrameOptions -> Middleware
withFrameOptions opt next = do
  http <- ask
  liftEffect $ setHeader http "X-Frame-Options" $ show opt
  next
