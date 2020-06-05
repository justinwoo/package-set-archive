module Crypto.SJCL.Hash.SHA512 where

import Crypto.SJCL.Hash.Types (HashingFunction)


-- | Block size, in bits
blockSize :: Int
blockSize = 1024

foreign import sha512 :: HashingFunction
