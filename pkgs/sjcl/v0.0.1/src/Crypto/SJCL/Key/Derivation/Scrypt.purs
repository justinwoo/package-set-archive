module Crypto.SJCL.Key.Derivation.Scrypt where

import Crypto.SJCL.Types (BitArray)
import Crypto.SJCL.MAC.Types (MACFunction)

import Data.Nullable (Nullable, toNullable)
import Data.Maybe (Maybe)
import Effect (Effect)
import Effect.Uncurried (EffectFn7, runEffectFn7)



foreign import scryptImpl :: EffectFn7 BitArray BitArray (Nullable Int) (Nullable Int) (Nullable Int) (Nullable Int) (Nullable MACFunction) BitArray

scrypt :: BitArray -- ^ Password / input data
       -> BitArray -- ^ Salt
       -> Maybe Int -- ^ `N`, default: 16384
       -> Maybe Int -- ^ `r`, default: 8
       -> Maybe Int -- ^ `p`, default: 1
       -> Maybe Int -- ^ Length
       -> Maybe MACFunction -- ^ Defaults to HMAC
       -> Effect BitArray
scrypt x s n r p l f = runEffectFn7 scryptImpl x s (toNullable n) (toNullable r) (toNullable p) (toNullable l) (toNullable f)
