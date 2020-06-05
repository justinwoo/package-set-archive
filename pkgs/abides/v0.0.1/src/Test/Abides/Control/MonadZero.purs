module Test.Abides.Control.MonadZero where

import Prelude (class Eq, (==), (>>=))
import Control.MonadZero (class MonadZero, empty)



annihilation :: forall m a b. MonadZero m => Eq (m b) => (a -> m b) -> Boolean
annihilation f = (empty >>= f) == empty
