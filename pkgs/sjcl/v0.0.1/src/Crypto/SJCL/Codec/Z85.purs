module Crypto.SJCL.Codec.Z85
  ( fromBits
  , toBits
  ) where

import Crypto.SJCL.Types (BitArray)

import Prelude (($), (<$>), pure)
import Data.Maybe (Maybe (..))
import Effect.Uncurried (EffectFn1, runEffectFn1)
import Effect.Unsafe (unsafePerformEffect)
import Effect.Exception (catchException)


foreign import fromBitsImpl :: EffectFn1 BitArray String
foreign import toBitsImpl :: EffectFn1 String BitArray


fromBits :: BitArray -> Maybe String
fromBits x = unsafePerformEffect $
  let handle e = pure Nothing
  in  catchException handle (Just <$> runEffectFn1 fromBitsImpl x)


toBits :: String -> Maybe BitArray
toBits x = unsafePerformEffect $
  let handle e = pure Nothing
  in  catchException handle (Just <$> runEffectFn1 toBitsImpl x)
