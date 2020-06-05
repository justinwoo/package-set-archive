module Crypto.SJCL.Hash.Types (HashingFunction, HashingState, new, reset, update, finalize, hash) where

import Crypto.SJCL.Types (BitArray)

import Prelude (Unit, bind, discard)
import Effect (Effect)
import Effect.Uncurried (EffectFn1, EffectFn2, runEffectFn1, runEffectFn2)
import Effect.Unsafe (unsafePerformEffect)


foreign import data HashingFunction :: Type

foreign import data HashingState :: Type


foreign import newImpl :: EffectFn1 HashingFunction HashingState

new :: HashingFunction -> Effect HashingState
new = runEffectFn1 newImpl

foreign import resetImpl :: EffectFn1 HashingState Unit

reset :: HashingState -> Effect Unit
reset = runEffectFn1 resetImpl

foreign import updateImpl :: EffectFn2 HashingState BitArray Unit

update :: HashingState -> BitArray -> Effect Unit
update = runEffectFn2 updateImpl

foreign import finalizeImpl :: EffectFn1 HashingState BitArray

finalize :: HashingState -> Effect BitArray
finalize = runEffectFn1 finalizeImpl



hash :: HashingFunction -> BitArray -> BitArray
hash f x = unsafePerformEffect do
  s <- new f
  update s x
  finalize s
