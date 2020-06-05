module Crypto.SJCL.Codec.Hex
  ( fromBits
  , toBits
  ) where

import Crypto.SJCL.Types (BitArray)


foreign import fromBits :: BitArray -> String
foreign import toBits :: String -> BitArray
