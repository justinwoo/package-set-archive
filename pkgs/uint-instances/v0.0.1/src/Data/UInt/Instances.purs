module Data.UInt.Instances where

import Prelude
import Data.UInt (UInt, toNumber, fromNumber)
import Data.UInt.Gen (genUInt)
import Data.Argonaut (class EncodeJson, class DecodeJson, encodeJson, decodeJson)
import Data.Hashable (class Hashable, hash)
import Data.Generic.Rep (class Generic)
import Test.QuickCheck (class Arbitrary, class Coarbitrary, coarbitrary)


-- | A newtype wrapper over UInts, to support various instances.
newtype UInt' = UInt' UInt

getUInt' :: UInt' -> UInt
getUInt' (UInt' x) = x

derive instance genericUInt' :: Generic UInt' _
derive newtype instance eqUInt' :: Eq UInt'
derive newtype instance ordUInt' :: Ord UInt'
derive newtype instance showUInt' :: Show UInt'
derive newtype instance boundedUInt' :: Bounded UInt'
derive newtype instance semiringUInt' :: Semiring UInt'
derive newtype instance ringUInt' :: Ring UInt'
derive newtype instance commutativeRingUInt' :: CommutativeRing UInt'
derive newtype instance euclideanRingUInt' :: EuclideanRing UInt'
instance encodeJsonUInt' :: EncodeJson UInt' where
  encodeJson (UInt' x) = encodeJson (toNumber x)
instance decodeJsonUInt' :: DecodeJson UInt' where
  decodeJson json = UInt' <<< fromNumber <$> decodeJson json

instance arbitraryUInt' :: Arbitrary UInt' where
  arbitrary = UInt' <$> genUInt (fromNumber 0.0) (fromNumber 2000000.0)
instance coarbitraryUInt' :: Coarbitrary UInt' where
  coarbitrary (UInt' x) = coarbitrary (toNumber x)

instance hashableUInt' :: Hashable UInt' where
  hash (UInt' x) = hash (toNumber x)

