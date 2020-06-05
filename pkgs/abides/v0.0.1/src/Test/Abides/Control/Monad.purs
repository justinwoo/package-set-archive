module Test.Abides.Control.Monad where

import Prelude (class Eq, (==), (>>=), class Monad, pure)


leftIdentity :: forall m a b. Monad m => Eq (m b) => (a -> m b) -> a -> Boolean
leftIdentity f x = (pure x >>= f) == f x


rightIdentity :: forall m a. Monad m => Eq (m a) => m a -> Boolean
rightIdentity x = (x >>= pure) == x


associative :: forall m a b c. Monad m => Eq (m c) => (a -> m b) -> (b -> m c) -> m a -> Boolean
associative f g x = ((x >>= f) >>= g) == (x >>= (\k -> f k >>= g))
