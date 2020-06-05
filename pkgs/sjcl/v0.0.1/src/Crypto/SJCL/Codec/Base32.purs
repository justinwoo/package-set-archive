module Crypto.SJCL.Codec.Base32
  ( fromBits
  , toBits
  ) where

import Crypto.SJCL.Types (BitArray)

import Prelude (($), (<$>), pure)
import Data.Maybe (Maybe (..))
import Effect.Uncurried (EffectFn1, runEffectFn1)
import Effect.Unsafe (unsafePerformEffect)
import Effect.Exception (catchException)


foreign import fromBits :: BitArray -> String
foreign import toBitsImpl :: EffectFn1 String BitArray


toBits :: String -> Maybe BitArray
toBits x = unsafePerformEffect $
  let handle e = pure Nothing
  in  catchException handle (Just <$> runEffectFn1 toBitsImpl x)
