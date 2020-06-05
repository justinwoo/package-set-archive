module Test.Abides.Control.Category where

import Prelude (class Eq, (==), (&&))
import Control.Category (class Category , (<<<), identity)


identity' :: forall c a b. Category c => Eq (c a b) => c a b -> Boolean
identity' p = ((identity <<< p) == p) && ((p <<< identity) == p)


associative :: forall q a b c d. Category q => Eq (q a d) => q c d -> q b c -> q a b -> Boolean
associative x y z = (x <<< (y <<< z)) == ((x <<< y) <<< z)
