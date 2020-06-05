module Test.Abides.Control.Semigroupoid where

import Prelude (class Eq, (==))
import Control.Semigroupoid (class Semigroupoid, (<<<))


associative :: forall q a b c d. Semigroupoid q => Eq (q a d) => q c d -> q b c -> q a b -> Boolean
associative x y z = (x <<< (y <<< z)) == ((x <<< y) <<< z)
