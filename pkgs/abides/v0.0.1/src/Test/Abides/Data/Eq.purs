module Test.Abides.Data.Eq
  ( module P
  , symmetry
  , transitive
  , negation
  ) where

import Prelude (class Eq, (==), (/=), not, (&&))
import Test.Abides.Properties (reflexive) as P


-- | x == y => y == x?
symmetry :: forall a. Eq a => a -> a -> Boolean
symmetry x y = if x == y then y == x else true


-- | x == y && y == z => x == z
transitive :: forall a. Eq a => a -> a -> a -> Boolean
transitive x y z = if x == y && y == z then x == z else true


-- | x /= y => not (x == y)
negation :: forall a. Eq a => a -> a -> Boolean
negation x y = if x /= y then not (x == y) else true
