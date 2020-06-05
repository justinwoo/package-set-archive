module Test.Abides.Data.EuclideanRing where


import Prelude (class Eq, (==), (*), (<=), (&&), zero, (<), (/=), (/), (>=), mod, (+), (||))
import Data.EuclideanRing (class EuclideanRing, degree)



integralDomain :: forall a. EuclideanRing a => Eq a => a -> a -> Boolean
integralDomain x y = if x /= zero && y /= zero then x * y /= zero else true


nonnegative :: forall a. EuclideanRing a => Eq a => a -> Boolean
nonnegative x = if x /= zero then degree x >= zero else true


quotientRemainder :: forall a. EuclideanRing a => Eq a => a -> a -> Boolean
quotientRemainder x y =
  if y /= zero
    then
      let q = x / y
          r = x `mod` y
      in  (x == q * y + r) && ((r == zero) || (degree r < degree y))
    else true


submultiplicative :: forall a. EuclideanRing a => Eq a => a -> a -> Boolean
submultiplicative x y =
  if x /= zero && y /= zero
    then degree x <= degree (x * y)
    else true
