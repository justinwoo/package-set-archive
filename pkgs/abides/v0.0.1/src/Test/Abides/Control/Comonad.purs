module Test.Abides.Control.Comonad where

import Prelude (class Eq, (==), (<<<))
import Control.Comonad (class Comonad, extend, extract, (<<=))


leftIdentity :: forall w a. Comonad w => Eq (w a) => w a -> Boolean
leftIdentity x = (extract <<= x) == x


rightIdentity :: forall w a. Comonad w => Eq a => (w a -> a) -> w a -> Boolean
rightIdentity f x = extract (f <<= x) == f x


associative :: forall w a b c. Comonad w => Eq (w c) => (w b -> c) -> (w a -> b) -> w a -> Boolean
associative f g x = extend f (extend g x) == extend (f <<< extend g) x
