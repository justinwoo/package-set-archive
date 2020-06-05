module Test.Abides.Control.MonadPlus where

import Prelude (class Eq, (>>=))
import Control.MonadPlus (class MonadPlus, (<|>))
import Test.Abides.Properties (distributive') as P


distributive :: forall m a b. MonadPlus m => Eq (m b) => (a -> m b) -> m a -> m a -> Boolean
distributive f = P.distributive' (\q -> q >>= f) (<|>) (<|>)
