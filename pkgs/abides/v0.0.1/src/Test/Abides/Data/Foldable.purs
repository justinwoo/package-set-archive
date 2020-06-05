module Test.Abides.Data.Foldable where

import Prelude (class Functor, map, class Eq, (==), class Monoid)
import Data.Foldable (class Foldable, foldMap, fold)


-- | fold (map f x) == foldMap f x
foldMap' :: forall f a b. Foldable f => Functor f => Monoid b => Eq b => (a -> b) -> f a -> Boolean
foldMap' f x = fold (map f x) == foldMap f x
