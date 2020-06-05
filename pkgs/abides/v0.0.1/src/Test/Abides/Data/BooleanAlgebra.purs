module Test.Abides.Data.BooleaneanAlgebra where

import Prelude (class Eq, (==), (||), class BooleanAlgebra)
import Data.HeytingAlgebra (tt, not)


excludedMiddle :: forall a. BooleanAlgebra a => Eq a => a -> Boolean
excludedMiddle x = (x || not x) == tt
