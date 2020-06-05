module Crypto.SJCL.Cipher.Mode.CBC
  ( encrypt, decrypt
  ) where

import Crypto.SJCL.Cipher.Block.Types (BlockCipher)
import Crypto.SJCL.Types (BitArray)

import Effect (Effect)
import Effect.Uncurried (EffectFn3, runEffectFn3)



foreign import encryptImpl :: EffectFn3 BlockCipher BitArray BitArray BitArray

encrypt :: BlockCipher -> BitArray -> BitArray -> Effect BitArray
encrypt = runEffectFn3 encryptImpl

foreign import decryptImpl :: EffectFn3 BlockCipher BitArray BitArray BitArray

decrypt :: BlockCipher -> BitArray -> BitArray -> Effect BitArray
decrypt = runEffectFn3 decryptImpl
