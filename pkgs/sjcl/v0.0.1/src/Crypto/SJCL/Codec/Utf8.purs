module Crypto.SJCL.Codec.Utf8
  ( fromBits
  , toBits
  ) where

import Crypto.SJCL.Types (BitArray)


foreign import fromBits :: BitArray -> String
foreign import toBits :: String -> BitArray
