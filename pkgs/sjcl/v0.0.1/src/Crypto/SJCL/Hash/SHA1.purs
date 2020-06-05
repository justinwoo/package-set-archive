module Crypto.SJCL.Hash.SHA1 where

import Crypto.SJCL.Hash.Types (HashingFunction)


-- | Block size, in bits
blockSize :: Int
blockSize = 512

foreign import sha1 :: HashingFunction
