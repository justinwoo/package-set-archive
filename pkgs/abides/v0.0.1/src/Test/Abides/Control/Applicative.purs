module Test.Abides.Control.Applicative where

import Prelude (class Eq, (==), (<<<), pure, identity, (<*>), class Applicative)


identity' :: forall f a. Applicative f => Eq (f a) => f a -> Boolean
identity' x = (pure identity <*> x) == x


composition :: forall f a b c. Applicative f => Eq (f c) => f (b -> c) -> f (a -> b) -> f a -> Boolean
composition f g h = (pure (<<<) <*> f <*> g <*> h) == (f <*> (g <*> h))


-- FIXME ambiguous type?
-- homomorphism :: forall f a b. Applicative f => Eq (f b) => (a -> b) -> a -> Boolean
-- homomorphism f x = (f' <*> x') == y'
--   where
--     f' :: f (a -> b)
--     f' = pure f

--     x' :: f a
--     x' = pure x

--     y' :: f b
--     y' = pure (f x)
