module Test.Abides.Data.BoundedEnum where

import Prelude (compare, class Ord, class Eq, (==), (>>=), top, bottom, (<), (>))
import Data.Enum (pred, succ, fromEnum, class BoundedEnum)
import Data.Maybe (Maybe (Just))


-- | compare x y == compare (fromEnum x) (fromEnum y)
compareHom :: forall a. BoundedEnum a => Ord a => a -> a -> Boolean
compareHom x y = compare x y == compare (fromEnum x) (fromEnum y)


-- | pred (succ x) == x
predsucc :: forall a. BoundedEnum a => Eq a => a -> Boolean
predsucc x = if x < top then (succ x >>= pred) == Just x else true


-- | succ (pred x) == x
succpred :: forall a. BoundedEnum a => Eq a => a -> Boolean
succpred x = if x > bottom then (pred x >>= succ) == Just x else true
