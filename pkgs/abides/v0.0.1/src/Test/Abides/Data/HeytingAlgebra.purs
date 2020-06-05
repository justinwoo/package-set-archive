module Test.Abides.Data.HeytingAlgebra where

import Prelude (class HeytingAlgebra, (||), (&&), class Eq, (==))
import Test.Abides.Properties (associative, commutative, distributive) as P
import Data.HeytingAlgebra (tt, ff, implies, not)


associative :: forall a. HeytingAlgebra a => Eq a => a -> a -> a -> Boolean
associative x y z = P.associative (||) x y z && P.associative (&&) x y z


commutative :: forall a. HeytingAlgebra a => Eq a => a -> a -> Boolean
commutative x y = P.commutative (||) x y && P.commutative (&&) x y


absorption :: forall a. HeytingAlgebra a => Eq a => a -> a -> Boolean
absorption x y = a && b
  where
    a = (x || (x && y)) == x
    b = (x && (x || y)) == x


idempotent :: forall a. HeytingAlgebra a => Eq a => a -> Boolean
idempotent x = a && b
  where
    a = (x || x) == x
    b = (x && x) == x


identity :: forall a. HeytingAlgebra a => Eq a => a -> Boolean
identity x = a && b
  where
    a = (x || ff) == x
    b = (x && tt) == x


implication :: forall a. HeytingAlgebra a => Eq a => a -> a -> a -> Boolean
implication x y z = a && b && c
  where
    a = (x `implies` x) == tt
    b = (x && (x `implies` y)) == (x && y)
    c = (y && (x `implies` y)) == y

distributive :: forall a. HeytingAlgebra a => Eq a => a -> a -> a -> Boolean
distributive x = P.distributive (implies x) (&&)


complement :: forall a. HeytingAlgebra a => Eq a => a -> Boolean
complement x = not x == (x `implies` ff)
