module Test.Input
  ( WellFormedInput (..) )
where

import Data.Char.Unicode          ( isPrint )
import Data.String.Utils          ( filter )
import Prelude
import Test.StrongCheck.Arbitrary ( class Arbitrary, arbitrary )
import Unsafe.Coerce              ( unsafeCoerce )


-- When UTF8-encoding a string, surrogate code points and other non-characters
-- are simply replaced by the replacement character � (U+FFFD).
-- This entails that the `encodeUtf8` function is not injective anymore and
-- thus the desired property `decodeUtf8 <<< encodeUtf8 == id` does not hold
-- in general.
--
-- For well-formed input strings, however, we can expect the property to hold.

-- Use a newtype in order to define an `Arbitrary` instance.
newtype WellFormedInput = WellFormedInput String

-- The `Arbitrary` instance for `String` currently simply chooses characters
-- out of the first 65536 unicode code points.
-- See `charGen` in `purescript-strongcheck`.
instance arbWellFormedInput :: Arbitrary WellFormedInput where
  arbitrary = WellFormedInput <<< filter isPrint' <$> arbitrary

-- We use `String` instead of `Char` here because PureScript `Char`s must be
-- UTF-16 code units and hence cannot represent all Unicode code points.
-- This function can safely be used here as `filter` iterates over code points.
isPrint' :: String -> Boolean
isPrint' = unsafeCoerce isPrint
