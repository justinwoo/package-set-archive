module Crypto.SJCL.BigNum
  ( BigNumClass, bignum, BigNumState
  , new, new', new_, copy
  , getLimb, addM, subM, doubleM, halveM
  , trim, reduce, fullReduce, normalize, cnormalize
  , toBits, bitLength, fromBits
  , pseudoMersennePrime
  , p127, p25519, p192k, p224k, p256k, p192, p224, p256, p384, p512
  , random
  , mod, inverseMod, power, square, mulmod, powermod, montpowermod
  ) where

import Crypto.SJCL.Types (BitArray, Paranoia)

import Prelude
  ( class Eq, class Ord, Unit, class Show, (==), Ordering (..), otherwise
  , class Semiring, class Ring, class CommutativeRing)
import Data.Function.Uncurried (Fn2, Fn3, runFn2, runFn3)
import Data.Tuple.Native (T2)
import Effect (Effect)
import Effect.Uncurried (EffectFn1, EffectFn2, runEffectFn1, runEffectFn2)
import Effect.Unsafe (unsafePerformEffect)



foreign import data BigNumClass :: Type

foreign import bignum :: BigNumClass


foreign import data BigNumState :: Type

foreign import newImpl :: forall a. EffectFn2 BigNumClass a BigNumState

new :: BigNumClass -> Number -> Effect BigNumState
new = runEffectFn2 newImpl

new' :: BigNumClass -> String -> Effect BigNumState
new' = runEffectFn2 newImpl

new_ :: BigNumClass -> BigNumState -> Effect BigNumState
new_ = runEffectFn2 newImpl


foreign import copyImpl :: EffectFn1 BigNumState BigNumState

copy :: BigNumState -> Effect BigNumState
copy = runEffectFn1 copyImpl

foreign import equalsImpl :: Fn2 BigNumState BigNumState Boolean

instance eqBigNumState :: Eq BigNumState where
  eq = runFn2 equalsImpl

foreign import getLimbImpl :: EffectFn2 BigNumState Int Number

getLimb :: BigNumState -> Int -> Effect Number
getLimb = runEffectFn2 getLimbImpl

foreign import greaterEqualsImpl :: Fn2 BigNumState BigNumState Boolean

instance ordBigNumState :: Ord BigNumState where
  compare x y
    | x == y = EQ
    | runFn2 greaterEqualsImpl x y = GT
    | otherwise = LT

foreign import toString :: BigNumState -> String

instance showBigNumState :: Show BigNumState where
  show = toString

foreign import addMImpl :: EffectFn2 BigNumState BigNumState Unit
addM :: BigNumState -> BigNumState -> Effect Unit
addM = runEffectFn2 addMImpl

foreign import subMImpl :: EffectFn2 BigNumState BigNumState Unit
subM :: BigNumState -> BigNumState -> Effect Unit
subM = runEffectFn2 subMImpl

foreign import doubleMImpl :: EffectFn1 BigNumState Unit
doubleM :: BigNumState -> Effect Unit
doubleM = runEffectFn1 doubleMImpl

foreign import halveMImpl :: EffectFn1 BigNumState Unit
halveM :: BigNumState -> Effect Unit
halveM = runEffectFn1 halveMImpl


instance semiringBigNumState :: Semiring BigNumState where
  add = runFn2 addImpl
  zero = unsafePerformEffect (new bignum 0.0)
  mul = runFn2 mulImpl
  one = unsafePerformEffect (new bignum 1.0)

instance ringBigNumState :: Ring BigNumState where
  sub = runFn2 subImpl

instance commutativeRingBigNumState :: CommutativeRing BigNumState


foreign import modImpl :: Fn2 BigNumState BigNumState BigNumState

mod :: BigNumState -> BigNumState -> BigNumState
mod = runFn2 modImpl

inverseMod :: BigNumState -> BigNumState -> BigNumState
inverseMod = runFn2 inverseModImpl

power :: BigNumState -> BigNumState -> BigNumState
power = runFn2 powerImpl

mulmod :: BigNumState -> BigNumState -> BigNumState -> BigNumState
mulmod = runFn3 mulmodImpl

powermod :: BigNumState -> BigNumState -> BigNumState -> BigNumState
powermod = runFn3 powermodImpl

montpowermod :: BigNumState -> BigNumState -> BigNumState -> BigNumState
montpowermod = runFn3 montpowermodImpl

foreign import inverseModImpl :: Fn2 BigNumState BigNumState BigNumState
foreign import addImpl :: Fn2 BigNumState BigNumState BigNumState
foreign import subImpl :: Fn2 BigNumState BigNumState BigNumState
foreign import mulImpl :: Fn2 BigNumState BigNumState BigNumState
foreign import square :: BigNumState -> BigNumState
foreign import powerImpl :: Fn2 BigNumState BigNumState BigNumState
foreign import mulmodImpl :: Fn3 BigNumState BigNumState BigNumState BigNumState
foreign import powermodImpl :: Fn3 BigNumState BigNumState BigNumState BigNumState
foreign import montpowermodImpl :: Fn3 BigNumState BigNumState BigNumState BigNumState


foreign import trimImpl :: EffectFn1 BigNumState Unit

trim :: BigNumState -> Effect Unit
trim = runEffectFn1 trimImpl

foreign import reduceImpl :: EffectFn1 BigNumState Unit

reduce :: BigNumState -> Effect Unit
reduce = runEffectFn1 reduceImpl

foreign import fullReduceImpl :: EffectFn1 BigNumState Unit

fullReduce :: BigNumState -> Effect Unit
fullReduce = runEffectFn1 fullReduceImpl

foreign import normalizeImpl :: EffectFn1 BigNumState Unit

normalize :: BigNumState -> Effect Unit
normalize = runEffectFn1 normalizeImpl

foreign import cnormalizeImpl :: EffectFn1 BigNumState Unit

cnormalize :: BigNumState -> Effect Unit
cnormalize = runEffectFn1 cnormalizeImpl


foreign import toBitsImpl :: EffectFn2 BigNumState Int BitArray

toBits :: BigNumState -> Int -> Effect BitArray
toBits = runEffectFn2 toBitsImpl

foreign import bitLengthImpl :: EffectFn1 BigNumState Int

bitLength :: BigNumState -> Effect Int
bitLength = runEffectFn1 bitLengthImpl

foreign import fromBitsImpl :: EffectFn1 BitArray BigNumState

fromBits :: BitArray -> Effect BigNumState
fromBits = runEffectFn1 fromBitsImpl



type Coord = T2 Number Number


foreign import pseudoMersennePrimeImpl :: Fn2 Number (Array Coord) BigNumClass

pseudoMersennePrime :: Number -> Array Coord -> BigNumClass
pseudoMersennePrime = runFn2 pseudoMersennePrimeImpl

foreign import p127 :: BigNumClass
foreign import p25519 :: BigNumClass
foreign import p192k :: BigNumClass
foreign import p224k :: BigNumClass
foreign import p256k :: BigNumClass
foreign import p192 :: BigNumClass
foreign import p224 :: BigNumClass
foreign import p256 :: BigNumClass
foreign import p384 :: BigNumClass
foreign import p512 :: BigNumClass



foreign import randomImpl :: EffectFn2 BigNumState Paranoia BigNumState


random :: BigNumState -> Paranoia -> Effect BigNumState
random = runEffectFn2 randomImpl
