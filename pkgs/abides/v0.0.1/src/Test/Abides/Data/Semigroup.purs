module Test.Abides.Data.Semigroup where

import Prelude (class Eq, class Semigroup, (<>))
import Test.Abides.Properties (associative) as P


associative :: forall a. Semigroup a => Eq a => a -> a -> a -> Boolean
associative = P.associative (<>)
