module Test.Abides.Control.Extend where

import Prelude (class Eq, (==), (<<<))
import Control.Extend (class Extend, extend)


associative :: forall w a b c. Extend w => Eq (w c) => (w b -> c) -> (w a -> b) -> w a -> Boolean
associative f g x = extend f (extend g x) == extend (f <<< extend g) x
