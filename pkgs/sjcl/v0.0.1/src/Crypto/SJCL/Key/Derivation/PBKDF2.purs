module Crypto.SJCL.Key.Derivation.PBKDF2 where

import Crypto.SJCL.Types (BitArray)
import Crypto.SJCL.MAC.Types (MACFunction)

import Data.Nullable (Nullable, toNullable)
import Data.Maybe (Maybe)
import Effect (Effect)
import Effect.Uncurried (EffectFn5, runEffectFn5)


foreign import pbkdf2Impl :: EffectFn5 BitArray BitArray (Nullable Int) (Nullable Int) (Nullable MACFunction) BitArray

pbkdf2 :: BitArray -- ^ Password / input data
       -> BitArray -- ^ Salt
       -> Maybe Int -- ^ Iterations, default is 1000
       -> Maybe Int -- ^ Output length, defaults to function length
       -> Maybe MACFunction -- ^ Defaults to HMAC
       -> Effect BitArray
pbkdf2 x s i l f = runEffectFn5 pbkdf2Impl x s (toNullable i) (toNullable l) (toNullable f)
