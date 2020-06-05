module Test.Abides.Control.Alternative where

import Prelude (class Applicative, (<*>), class Eq, (==))
import Test.Abides.Properties (distributive') as P
import Control.Alternative (class Alternative, (<|>), empty)


-- | (f <|> g) <*> x == (f <*> x) <|> (g <|> x)
distributive :: forall f a b. Alternative f => Applicative f => Eq (f b) => f a -> f (a -> b) -> f (a -> b) -> Boolean
distributive x = P.distributive' go (<|>) (<|>)
  where
    go :: f (a -> b) -> f b
    go f = f <*> x


-- | empty <*> x == empty
annihilation :: forall f a b. Alternative f => Applicative f => Eq (f b) => f (a -> b) -> Boolean
annihilation f = (f <*> empty) == empty
