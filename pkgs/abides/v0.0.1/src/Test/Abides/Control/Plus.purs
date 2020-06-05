module Test.Abides.Control.Plus where

import Prelude (class Eq, (==))
import Control.Plus (class Plus, (<|>), empty)


leftIdentity :: forall m a. Plus m => Eq (m a) => m a -> Boolean
leftIdentity x = (empty <|> x) == x


rightIdentity :: forall m a. Plus m => Eq (m a) => m a -> Boolean
rightIdentity x = (x <|> empty) == x
