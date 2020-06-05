module Bucketchain.Secure.XSSProtection where

import Prelude

import Bucketchain.Http (setHeader)
import Bucketchain.Middleware (Middleware)
import Control.Monad.Reader (ask)
import Data.Array (catMaybes)
import Data.Maybe (Maybe(..))
import Data.String (joinWith)
import Effect.Class (liftEffect)

-- | A type of `X-XSS-Protection` options.
type Options =
  { reportingURI :: Maybe String
  }

-- | Set `X-XSS-Protection`.
withXSSProtection :: Options -> Middleware
withXSSProtection { reportingURI } next = do
  http <- ask
  liftEffect
    $ setHeader http "X-XSS-Protection"
    $ joinWith "; "
    $ catMaybes
      [ Just "1"
      , Just "mode=block"
      , ("report=" <> _) <$> reportingURI
      ]
  next
