module Test.Abides.Data.CommutativeRing where

import Prelude (class Eq, class CommutativeRing, (*))
import Test.Abides.Properties (commutative) as P


commutative :: forall a. CommutativeRing a => Eq a => a -> a -> Boolean
commutative = P.commutative (*)
