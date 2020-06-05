module Crypto.SJCL.Cipher.Block.AES
  ( aes, AESState, new, encrypt, decrypt
  ) where

import Crypto.SJCL.Types (Word)
import Crypto.SJCL.Cipher.Block.Types (BlockCipher)

import Data.Vec (Vec)
import Data.Typelevel.Num (D4)
import Effect (Effect)
import Effect.Uncurried (EffectFn1, EffectFn2, runEffectFn1, runEffectFn2)


foreign import aes :: BlockCipher

foreign import data AESState :: Type

foreign import newImpl :: EffectFn1 (Array Word) AESState

new :: Array Word -- ^ Either 4, 6, or 8 words
    -> Effect AESState
new = runEffectFn1 newImpl

foreign import encryptImpl :: EffectFn2 AESState (Vec D4 Word) (Vec D4 Word)

encrypt :: AESState -> Vec D4 Word -> Effect (Vec D4 Word)
encrypt = runEffectFn2 encryptImpl

foreign import decryptImpl :: EffectFn2 AESState (Vec D4 Word) (Vec D4 Word)

decrypt :: AESState -> Vec D4 Word -> Effect (Vec D4 Word)
decrypt = runEffectFn2 decryptImpl
