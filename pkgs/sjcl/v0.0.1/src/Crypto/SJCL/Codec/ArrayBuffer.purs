module Crypto.SJCL.Codec.ArrayBuffer
  ( fromBits
  , toBits
  ) where

import Crypto.SJCL.Types (BitArray, BitLength)

import Prelude (($), pure, (<$>))
import Data.ArrayBuffer.Types (ArrayBuffer)
import Data.Nullable (Nullable, toNullable)
import Data.Maybe (Maybe (..))
import Effect.Unsafe (unsafePerformEffect)
import Effect.Uncurried (EffectFn2, runEffectFn2)
import Effect.Exception (catchException)


foreign import fromBitsImpl :: EffectFn2 BitArray (Nullable BitLength) ArrayBuffer


fromBits :: BitArray -> Maybe BitLength -> Maybe ArrayBuffer
fromBits x ml = unsafePerformEffect $
  let handle e = pure Nothing
  in  catchException handle (Just <$> runEffectFn2 fromBitsImpl x (toNullable ml))


foreign import toBits :: ArrayBuffer -> BitArray
