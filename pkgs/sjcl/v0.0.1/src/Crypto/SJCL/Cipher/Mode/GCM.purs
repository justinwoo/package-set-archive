module Crypto.SJCL.Cipher.Mode.GCM
  ( encrypt, decrypt
  ) where

import Crypto.SJCL.Cipher.Block.Types (BlockCipher)
import Crypto.SJCL.Types (BitArray)

import Data.Nullable (Nullable, toNullable)
import Data.Maybe (Maybe)
import Effect (Effect)
import Effect.Uncurried (EffectFn4, runEffectFn4)



foreign import encryptImpl :: EffectFn4 BlockCipher BitArray BitArray (Nullable Int) BitArray

encrypt :: BlockCipher -> BitArray -> BitArray -> Maybe Int -> Effect BitArray
encrypt c x i l = runEffectFn4 encryptImpl c x i (toNullable l)

foreign import decryptImpl :: EffectFn4 BlockCipher BitArray BitArray (Nullable Int) BitArray

decrypt :: BlockCipher -> BitArray -> BitArray -> Maybe Int -> Effect BitArray
decrypt c x i l = runEffectFn4 decryptImpl c x i (toNullable l)
