module Bucketchain.Secure.HSTS
  ( Options
  , withHSTS
  ) where

import Prelude

import Bucketchain.Http (setHeader)
import Bucketchain.Middleware (Middleware)
import Control.Monad.Reader (ask)
import Data.Array (catMaybes)
import Data.Int (ceil)
import Data.Maybe (Maybe(..))
import Data.Newtype (unwrap)
import Data.String (joinWith)
import Data.Time.Duration (Seconds)
import Effect.Class (liftEffect)

-- | A type of `Strict-Transport-Security` options.
type Options =
  { maxAge :: Seconds
  , includeSubDomains :: Boolean
  , preload :: Boolean
  }

-- | Set `Strict-Transport-Security` options.
withHSTS :: Options -> Middleware
withHSTS opts next = do
  http <- ask
  liftEffect
    $ setHeader http "Strict-Transport-Security"
    $ encodeOptions opts
  next

encodeOptions :: Options -> String
encodeOptions { maxAge, includeSubDomains, preload } =
  joinWith "; " $ catMaybes [ maxAge', includeSubDomains', preload' ]
  where
    maxAge' = Just $ "max-age=" <> (show $ ceil $ unwrap maxAge)
    includeSubDomains' =
      if includeSubDomains
        then Just "includeSubDomains"
        else Nothing
    preload' =
      if preload
        then Just "preload"
        else Nothing
