-- Author: d86leader@mail.com
-- License: MIT License; you should have received a copy of the license text
--  with this source file; if you haven't, see:
--  https://github.com/d86leader/purescript-undefined-or/blob/master/LICENSE

-- | A lot of JS functions accept and return records where some fields may be
-- | missing. For missing fields in argument records you can use `Data.Options`
-- | module. For missing fields in return records you can either use `Foreign`
-- | and write parsers, or this module and trust the foreign code.
-- |
-- | A simple example of usage:
-- | ```
-- | // Test.js
-- | exports.typicalApi = function() {
-- |   if (Math.random() > 0.5) {
-- |     return {"numberData": 9431, "stringData": "atad"};
-- |   } else {
-- |     return {"numberData": 8752}
-- |   }
-- | }
-- |
-- | -- Test.purs
-- | type ApiRet = {numberData :: Boolean, stringData :: UndefinedOr String}
-- |
-- | foreign import typicalApi :: Effect ApiRet
-- |
-- | ...
-- |
-- | result <- typicalApi
-- | case fromUndefined result.stringData of
-- |     Just data -> Console.log $ "got a string: " <> data
-- |     Nothing   -> Console.log "no string"
-- | ```
-- |
-- | You should avoid using this library whenever possible, as it's a shortcut:
-- | it lifts the neccessity of data validation from you, the ffi-bindings
-- | writer, to the user of your api. Also 75% of the use cases can be covered
-- | by clever use of typeclasses.
-- |
-- | You should especially Not use this over Maybe.
module Data.UndefinedOr
    ( UndefinedOr, isUndefined
    , fromUndefined, toUndefined, runUndefined
    ) where

import Prelude
import Data.Maybe (Maybe (Just, Nothing))
import Control.Alt (class Alt)
import Control.Plus (class Plus)


-- | Wrapper for foreign values which may be undefined.
-- |
-- | Caution: it may misbehave if the wrapped value is `null` or `undefined`.
-- |
-- | All instances are the same as `Maybe`'s instances. The missing Bind, Monad
-- | and other advanced ones are omitted on purpose. If you want to use them,
-- | run `fromUndefined` and use Maybe's instances.
newtype UndefinedOr a = UndefinedOr a

-- | Check if the value is present
foreign import isUndefined :: forall a. UndefinedOr a -> Boolean
foreign import undefinedVal :: forall a. UndefinedOr a


-- | Convert to `Maybe`, returning `Nothing` if the value is missing
fromUndefined :: forall a. UndefinedOr a -> Maybe a
fromUndefined u@(UndefinedOr x) =
    if isUndefined u
        then Nothing
        else Just x

-- | Wrap a value. Useful for equality checks with a foreign value without
-- | having to unwrap it.
-- |
-- | Is a synonym for `pure`. Use that or this function based on the style
-- | preference or if the name will disambiguate intent.
toUndefined :: forall a. a -> UndefinedOr a
toUndefined = UndefinedOr

-- | Like `maybe` but for undefined
runUndefined :: forall a b. b -> (a -> b) -> UndefinedOr a -> b
runUndefined b f u@(UndefinedOr a) =
    if isUndefined u
        then b
        else f a


instance eqUndefined :: Eq a => Eq (UndefinedOr a) where
    eq ux@(UndefinedOr x) uy@(UndefinedOr y) = case unit of
      _ | isUndefined ux && isUndefined uy -> true
        | not (isUndefined ux) && not (isUndefined uy) -> eq x y
      _ -> false

instance functorUndefined :: Functor UndefinedOr where
    map f u@(UndefinedOr x) =
        if isUndefined u
            then undefinedVal
            else UndefinedOr (f x)

instance applyUndefined :: Apply UndefinedOr where
    apply uf@(UndefinedOr f) ux@(UndefinedOr x) =
        if isUndefined uf || isUndefined ux
            then undefinedVal
            else UndefinedOr (f x)

instance applicativeUndefined :: Applicative UndefinedOr where
    pure = toUndefined

instance altUndefined :: Alt UndefinedOr where
    alt x y =
        if isUndefined x
            then y
            else x

instance plusUndefined :: Plus UndefinedOr where
    empty = undefinedVal

instance showUndefined :: Show a => Show (UndefinedOr a) where
    show u@(UndefinedOr x) =
        if isUndefined u
            then "undefined"
            else show x
