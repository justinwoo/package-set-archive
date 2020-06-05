module Test.Abides.Control.Alt where

import Prelude (class Eq, (<$>))
import Control.Alt (class Alt, (<|>))
import Test.Abides.Properties (associative, distributive') as P


associative :: forall f a. Alt f => Eq (f a) => f a -> f a -> f a -> Boolean
associative = P.associative (<|>)


distributive :: forall f a b. Alt f => Eq (f b) => (a -> b) -> f a -> f a -> Boolean
distributive f = P.distributive' go (<|>) (<|>)
  where
    go :: f a -> f b
    go x = f <$> x
