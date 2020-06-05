module Bucketchain.Header.Vary (addVary) where

import Prelude

import Bucketchain.Http (Http, setHeader, responseHeader)
import Data.Array (nub, (:))
import Data.Maybe (maybe)
import Data.String (Pattern(..), split, joinWith)
import Effect (Effect)

-- | Add a value to `Vary` header.
addVary :: Http -> String -> Effect Unit
addVary http val =
  setHeader http "Vary" $ maybe val add $ responseHeader http "vary"
  where
    add current = joinWith divider $ nub $ val : split pattern current

divider :: String
divider = ", "

pattern :: Pattern
pattern = Pattern divider
