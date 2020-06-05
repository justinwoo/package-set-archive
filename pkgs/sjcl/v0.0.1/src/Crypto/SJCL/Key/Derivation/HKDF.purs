module Crypto.SJCL.Key.Derivation.HKDF where

import Crypto.SJCL.Types (BitArray)
import Crypto.SJCL.Hash.Types (HashingFunction)

import Data.Nullable (Nullable, toNullable)
import Data.Maybe (Maybe)
import Effect (Effect)
import Effect.Uncurried (EffectFn5, runEffectFn5)


foreign import hkdfImpl :: EffectFn5 BitArray Int BitArray BitArray (Nullable HashingFunction) BitArray

hkdf :: BitArray -- ^ Input data
     -> Int -- ^ Bit length
     -> BitArray -- ^ Salt
     -> BitArray -- ^ Info
     -> Maybe HashingFunction -- ^ Defaults to Sha256
     -> Effect BitArray
hkdf x l s i f = runEffectFn5 hkdfImpl x l s i (toNullable f)
