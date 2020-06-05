module Test.Abides.Data.Semiring where

import Prelude (class Eq, (==), (&&), (+), class Semiring, zero, one, (*))
import Test.Abides.Properties (associative, commutative, distributive) as P


commutativeMonoid :: forall a. Semiring a => Eq a => a -> a -> a -> Boolean
commutativeMonoid x y z = a && b && c
  where
    a = P.associative (+) x y z
    b = (zero + x == x + zero) && (x + zero == x)
    c = P.commutative (+) x y


monoid :: forall a. Semiring a => Eq a => a -> a -> a -> Boolean
monoid x y z = a && b
  where
    a = P.associative (*) x y z
    b = (one * x == x * one) && (x * one == x)


leftDistributive :: forall a. Semiring a => Eq a => a -> a -> a -> Boolean
leftDistributive x = P.distributive (\q -> x * q) (+)

rightDistributive :: forall a. Semiring a => Eq a => a -> a -> a -> Boolean
rightDistributive x = P.distributive (\q -> q * x) (+)


annihilation :: forall a. Semiring a => Eq a => a -> Boolean
annihilation x = (x * zero == zero * x) && (x * zero == zero)
