module Test.Abides.Data.DivisionRing where

import Prelude (zero, class Eq, (==), class DivisionRing, recip, (*), one, (&&))


inverse :: forall a. DivisionRing a => Eq a => a -> Boolean
inverse x = if x == zero then true else (x * recip x) == (recip x * x) && (x * recip x) == one
