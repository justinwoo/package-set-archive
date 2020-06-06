module Cheerio
  ( Cheerio
  , attr
  , children
  , eq
  , first
  , find
  , hasClass
  , html
  , last
  , length
  , next
  , parent
  , prev
  , siblings
  , text
  , toArray
  ) where

import Prelude hiding (eq)

import Data.Array ((..))
import Data.Function.Uncurried (Fn2, Fn3, Fn4, runFn2, runFn3, runFn4)
import Data.Maybe (Maybe(..))

foreign import data Cheerio :: Type

-- Attributes
foreign import attrImpl :: forall a.
  Fn4 (Maybe a) (a -> Maybe a) String Cheerio (Maybe String)

-- | Gets an attribute value from the first selected element, returning
-- | Nothing when there are no selected elements, or when the first selected
-- | element does not have the specified attribute.
attr :: String -> Cheerio -> Maybe String
attr = runFn4 attrImpl Nothing Just

foreign import hasClassImpl :: Fn2 String Cheerio Boolean

hasClass :: String -> Cheerio -> Boolean
hasClass = runFn2 hasClassImpl

-- Traversing
foreign import findImpl :: Fn2 String Cheerio Cheerio

find :: String -> Cheerio -> Cheerio
find = runFn2 findImpl

foreign import parent :: Cheerio -> Cheerio
foreign import next :: Cheerio -> Cheerio
foreign import prev :: Cheerio -> Cheerio
foreign import siblings :: Cheerio -> Cheerio
foreign import children :: Cheerio -> Cheerio
foreign import first :: Cheerio -> Cheerio
foreign import last :: Cheerio -> Cheerio

foreign import eqImpl :: Fn2 Int Cheerio Cheerio

eq :: Int -> Cheerio -> Cheerio
eq = runFn2 eqImpl

-- Rendering
foreign import htmlImpl :: forall a.
  Fn3 (Maybe a) (a -> Maybe a) Cheerio (Maybe String)

-- | Gets an html content string from the first selected element, returning
-- | Nothing when there are no selected elements.
html :: Cheerio -> Maybe String
html = runFn3 htmlImpl Nothing Just

foreign import text :: Cheerio -> String

-- Miscellaneous

-- | Get how many elements there are in the given Cheerio
foreign import length :: Cheerio -> Int

-- | Seperate each element out into its own Cheerio
toArray :: Cheerio -> Array Cheerio
toArray c
  | length c == 0 = []
  | otherwise     = map (\i -> eq i c) (0 .. (length c - 1))
