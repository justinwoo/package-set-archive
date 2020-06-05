module Crypto.SJCL.MAC.HMAC
  ( HMACState, hmac, new, reset, update, digest, mac, encrypt
  ) where

import Crypto.SJCL.Types (BitArray)
import Crypto.SJCL.MAC.Types (MACFunction)
import Crypto.SJCL.Hash.Types (HashingFunction)

import Prelude (Unit)
import Data.Nullable (Nullable, toNullable)
import Data.Maybe (Maybe)
import Data.Function.Uncurried (Fn2, runFn2)
import Effect (Effect)
import Effect.Uncurried (EffectFn1, EffectFn2, runEffectFn1, runEffectFn2)


foreign import hmac :: MACFunction


foreign import data HMACState :: Type


foreign import newImpl :: EffectFn2 BitArray (Nullable HashingFunction) HMACState

new :: BitArray -- ^ Key
    -> Maybe HashingFunction -- ^ Uses SHA256 by default
    -> Effect HMACState
new k f = runEffectFn2 newImpl k (toNullable f)

foreign import resetImpl :: EffectFn1 HMACState Unit

reset :: HMACState -> Effect Unit
reset = runEffectFn1 resetImpl

foreign import updateImpl :: EffectFn2 HMACState BitArray Unit

update :: HMACState -> BitArray -> Effect Unit
update = runEffectFn2 updateImpl

foreign import digestImpl :: EffectFn1 HMACState BitArray

digest :: HMACState -> Effect BitArray
digest = runEffectFn1 digestImpl

foreign import macImpl :: Fn2 HMACState BitArray BitArray

mac :: HMACState -> BitArray -> BitArray
mac = runFn2 macImpl

encrypt :: HMACState -> BitArray -> BitArray
encrypt = mac
