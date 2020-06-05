module Test.Abides.Data.Functor where

import Prelude (class Functor, map, class Eq, (==), identity, (<<<))


-- | map id x == x?
identity' :: forall f a. Functor f => Eq (f a) => f a -> Boolean
identity' x = map identity x == x

-- | map (f . g) x == map f (map g x)?
composition :: forall f a. Functor f => Eq (f a) => (a -> a) -> (a -> a) -> f a -> Boolean
composition f g x = map (f <<< g) x == map f (map g x)
