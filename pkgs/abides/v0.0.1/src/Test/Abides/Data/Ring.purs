module Test.Abides.Data.Ring where

import Prelude (class Eq, (==), negate, (&&), (-), (+), zero, class Ring)


additiveInverse :: forall a. Ring a => Eq a => a -> Boolean
additiveInverse x = a && b
  where
    a = (x - x) == (x + (negate x))
    b = ((negate x) + x) == zero
