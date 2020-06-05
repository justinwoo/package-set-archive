module Bucketchain.Secure where

import Prelude

import Bucketchain.Middleware (Middleware)
import Bucketchain.Secure.ContentTypeOptions (withContentTypeOptions)
import Bucketchain.Secure.DownloadOptions (withDownloadOptions)
import Bucketchain.Secure.FrameOptions (FrameOptions(..), withFrameOptions)
import Bucketchain.Secure.HSTS (withHSTS)
import Bucketchain.Secure.XSSProtection (withXSSProtection)
import Data.Maybe (Maybe(..))
import Data.Time.Duration (Seconds(..))

-- | Set some headers used often for security at once.
-- |
-- | You can customize by using each middlewares instead of this function.
withSecurityHeaders :: Middleware
withSecurityHeaders =
  withContentTypeOptions
    >>> withDownloadOptions
    >>> withFrameOptions SameOrigin
    >>> withXSSProtection { reportingURI: Nothing }
    >>> withHSTS
      { maxAge: Seconds 31536000.0
      , includeSubDomains: true
      , preload: true
      }
