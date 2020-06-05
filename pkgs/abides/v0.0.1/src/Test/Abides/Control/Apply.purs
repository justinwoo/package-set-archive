module Test.Abides.Control.Apply where


import Prelude (class Eq, (==), (<<<), (<*>), class Apply, (<$>))


composition :: forall f a b c. Apply f => Eq (f c) => f (b -> c) -> f (a -> b) -> f a -> Boolean
composition f g h = ((<<<) <$> f <*> g <*> h) == (f <*> (g <*> h))
