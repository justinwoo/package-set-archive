module Test.Abides.Control.Bind where

import Prelude (class Bind, class Eq, (==), (>>=))


associative :: forall m a b c. Bind m => Eq (m c) => (a -> m b) -> (b -> m c) -> m a -> Boolean
associative f g x = ((x >>= f) >>= g) == (x >>= (\k -> f k >>= g))
