module Crypto.SJCL.Cipher.Mode.OCB2
  ( encrypt, decrypt
  ) where


import Crypto.SJCL.Cipher.Block.Types (BlockCipher)
import Crypto.SJCL.Types (BitArray)

import Data.Nullable (Nullable, toNullable)
import Data.Maybe (Maybe)
import Effect (Effect)
import Effect.Uncurried (EffectFn5, runEffectFn5)



foreign import encryptImpl :: EffectFn5 BlockCipher BitArray BitArray (Nullable Int) (Nullable Boolean) BitArray

encrypt :: BlockCipher -> BitArray -> BitArray -> Maybe Int -> Maybe Boolean -> Effect BitArray
encrypt c x i l p = runEffectFn5 encryptImpl c x i (toNullable l) (toNullable p)

foreign import decryptImpl :: EffectFn5 BlockCipher BitArray BitArray (Nullable Int) (Nullable Boolean) BitArray

decrypt :: BlockCipher -> BitArray -> BitArray -> Maybe Int -> Maybe Boolean -> Effect BitArray
decrypt c x i l p = runEffectFn5 decryptImpl c x i (toNullable l) (toNullable p)
