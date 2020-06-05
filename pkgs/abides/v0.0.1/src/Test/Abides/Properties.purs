module Test.Abides.Properties where


import Prelude (class Eq, (==))


-- | x == x?
reflexive :: forall a. Eq a => a -> Boolean
reflexive x = x == x

-- | f x y == f y x?
commutative :: forall a b. Eq b => (a -> a -> b) -> a -> a -> Boolean
commutative f x y = f x y == f y x

-- | f (f x y) z == f x (f y z)?
associative :: forall a. Eq a => (a -> a -> a) -> a -> a -> a -> Boolean
associative f x y z = f (f x y) z == f x (f y z)

-- | f (f x) == f x?
idempotent :: forall a. Eq a => (a -> a) -> a -> Boolean
idempotent f x = f (f x) == f x

-- | f (g x y) == g (f x) (f y)?
distributive :: forall a. Eq a => (a -> a) -> (a -> a -> a) -> a -> a -> Boolean
distributive f g x y = f (g x y) == g (f x) (f y)

-- | f (g x y) == g' (f x) (f y)?
distributive' :: forall a b. Eq b => (a -> b) -> (a -> a -> a) -> (b -> b -> b) -> a -> a -> Boolean
distributive' f g g' x y = f (g x y) == g' (f x) (f y)

-- | f x y == x? Note: bottom ~ forall y. f bottom y == bottom, while unit ~ forall x. f x unit == x
constL :: forall a. Eq a => (a -> a -> a) -> a -> a -> Boolean
constL f x y = f x y == x

-- | f x y == y?
constR :: forall a. Eq a => (a -> a -> a) -> a -> a -> Boolean
constR f x y = f x y == y

