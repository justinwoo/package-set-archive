module Test.Abides.Data.Bounded where

import Prelude (class Ord, (<=), (&&), top, bottom, class Bounded)

-- | minBound <= x <= maxBound?
bounded :: forall a. Bounded a => Ord a => a -> Boolean
bounded x = bottom <= x && x <= top
