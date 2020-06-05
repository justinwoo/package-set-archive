module Crypto.SJCL.Types
  ( BitArray
  , toBits
  , fromBits
  , bitLength
  , bitSlice
  , byteswapM
  , clamp
  , extract
  , getPartial
  , partial
  , partial'
  , Word
  , BitLength
  , Paranoia
  ) where


import Prelude (class Eq, class Semigroup, class Show, show, (<<<))
import Data.Function.Uncurried (Fn2, Fn3, runFn3, runFn2)


type BitLength = Int


newtype BitArray = BitArray (Array Word)

foreign import fromBits :: BitArray -> Array Word
foreign import toBits :: Array Word -> BitArray


instance eqBitArray :: Eq BitArray where
  eq = runFn2 equalImpl

instance semigroupBitArray :: Semigroup BitArray where
  append = runFn2 concatImpl

instance showBitArray :: Show BitArray where
  show = show <<< fromBits


type Word = Number


foreign import bitLength :: BitArray -> Int

foreign import bitSliceImpl :: Fn3 BitArray Int Int BitArray

bitSlice :: BitArray -> Int -> Int -> BitArray
bitSlice = runFn3 bitSliceImpl

foreign import byteswapM :: BitArray -> BitArray

foreign import clampImpl :: Fn2 BitArray Int BitArray

clamp :: BitArray -> Int -> BitArray
clamp = runFn2 clampImpl

foreign import concatImpl :: Fn2 BitArray BitArray BitArray

foreign import equalImpl :: Fn2 BitArray BitArray Boolean

foreign import extractImpl :: Fn3 BitArray Int Int Word

extract :: BitArray -> Int -> Int -> Word
extract = runFn3 extractImpl

foreign import getPartial :: Word -> Int

foreign import partialImpl :: Fn2 Int Word Word

partial :: Int -> Word -> Word
partial = runFn2 partialImpl

foreign import partial_Impl :: Fn2 Int Word Word

partial' :: Int -> Word -> Word
partial' = runFn2 partial_Impl

type Paranoia = Int
