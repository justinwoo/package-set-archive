module Test.Abides.Data.Monoid where

import Prelude (class Eq, class Monoid, (<>), mempty)
import Test.Abides.Properties (constL, constR)


leftIdentity :: forall a. Monoid a => Eq a => a -> Boolean
leftIdentity = constR (<>) mempty


rightIdentity :: forall a. Monoid a => Eq a => a -> Boolean
rightIdentity x = constL (<>) x mempty
