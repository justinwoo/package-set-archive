module Crypto.SJCL.ECC
  ( PointAffine, point, toJac, multAffine, mult2Affine, multiples, toBits, negateAffine, isValidAffine
  , PointJac, pointJac, addJac, doubleJac, toAffine, multJac, mult2Jac, negateJac, isValidJac
  , Curve, curve, curveFromBits, c192, c224, c256, c384, c521, k192, k224, k256
  , ECCPublicKey, ECCSecretKey, newBasicPublicKey, newBasicSecretKey, getPublic, getSecret
  , ECCPublicElGamalKey, ECCSecretElGamalKey, newElGamalKeypair, newElGamalPublicKey, kem, newElGamalSecretKey, unkem, dh, dhJava
  , ECCPublicEcdsaKey, ECCSecretEcdsaKey, newEcdsaKeypair, newEcdsaPublicKey, verify, newEcdsaSecretKey, sign
  ) where

import Crypto.SJCL.Types (BitArray, Paranoia)
import Crypto.SJCL.BigNum (BigNumState)

import Data.Function.Uncurried (Fn2, Fn3, Fn4, Fn5, runFn2, runFn3, runFn4, runFn5)
import Data.Nullable (Nullable, toNullable)
import Data.Maybe (Maybe)
import Effect (Effect)
import Effect.Uncurried (EffectFn2, EffectFn3, EffectFn4, runEffectFn2, runEffectFn3, runEffectFn4)


foreign import data PointAffine :: Type

foreign import pointImpl :: Fn3 Curve BigNumState BigNumState PointAffine

point :: Curve -> BigNumState -> BigNumState -> PointAffine
point = runFn3 pointImpl

foreign import toJac :: PointAffine -> PointJac

foreign import multAffineImpl :: Fn2 PointAffine BigNumState PointAffine

multAffine :: PointAffine -> BigNumState -> PointAffine
multAffine = runFn2 multAffineImpl

foreign import mult2AffineImpl :: Fn4 PointAffine BigNumState BigNumState PointAffine PointJac

mult2Affine :: PointAffine -> BigNumState -> BigNumState -> PointAffine -> PointJac
mult2Affine = runFn4 mult2AffineImpl

foreign import multiples :: PointAffine -> (Array PointAffine)

foreign import toBits :: PointAffine -> BitArray


foreign import data PointJac :: Type

foreign import pointJacImpl :: Fn4 BigNumState BigNumState BigNumState Curve PointJac

pointJac :: BigNumState -> BigNumState -> BigNumState -> Curve -> PointJac
pointJac = runFn4 pointJacImpl

foreign import addJacImpl :: Fn2 PointJac PointAffine PointJac

addJac :: PointJac -> PointAffine -> PointJac
addJac = runFn2 addJacImpl

foreign import doubleJac :: PointJac -> PointJac

foreign import toAffine :: PointJac -> PointAffine

foreign import multJacImpl :: Fn3 PointJac BigNumState PointAffine PointJac

multJac :: PointJac -> BigNumState -> PointAffine -> PointJac
multJac = runFn3 multJacImpl

foreign import mult2JacImpl :: Fn5 PointJac BigNumState PointAffine BigNumState PointAffine PointJac

mult2Jac :: PointJac -> BigNumState -> PointAffine -> BigNumState -> PointAffine -> PointJac
mult2Jac = runFn5 mult2JacImpl



foreign import negateImpl :: forall a. a -> a

negateAffine :: PointAffine -> PointAffine
negateAffine = negateImpl

negateJac :: PointJac -> PointJac
negateJac = negateImpl

foreign import isValidImpl :: forall a. a -> Boolean

isValidAffine :: PointAffine -> Boolean
isValidAffine = isValidImpl

isValidJac :: PointJac -> Boolean
isValidJac = isValidImpl

foreign import data Curve :: Type

foreign import curveImpl :: Fn5 BigNumState BigNumState BigNumState BigNumState BigNumState Curve

curve :: BigNumState -> BigNumState -> BigNumState -> BigNumState -> BigNumState -> Curve
curve = runFn5 curveImpl

foreign import curveFromBitsImpl :: Fn2 Curve BitArray PointAffine

curveFromBits :: Curve -> BitArray -> PointAffine
curveFromBits = runFn2 curveFromBitsImpl



foreign import c192 :: Curve
foreign import c224 :: Curve
foreign import c256 :: Curve
foreign import c384 :: Curve
foreign import c521 :: Curve
foreign import k192 :: Curve
foreign import k224 :: Curve
foreign import k256 :: Curve


foreign import data ECCPublicKey :: Type
foreign import data ECCSecretKey :: Type

foreign import newBasicPublicKeyImpl :: Fn2 Curve PointAffine ECCPublicKey

newBasicPublicKey :: Curve -> PointAffine -> ECCPublicKey
newBasicPublicKey = runFn2 newBasicPublicKeyImpl

foreign import getPublic :: ECCPublicKey -> {x :: BitArray, y :: BitArray}


foreign import newBasicSecretKeyImpl :: Fn2 Curve BigNumState ECCSecretKey

newBasicSecretKey :: Curve -> BigNumState -> ECCSecretKey
newBasicSecretKey = runFn2 newBasicSecretKeyImpl

foreign import getSecret :: ECCSecretKey -> BitArray

foreign import data ECCPublicElGamalKey :: Type
foreign import data ECCSecretElGamalKey :: Type

foreign import newElGamalKeypairImpl :: EffectFn3 Curve (Nullable Paranoia) ECCSecretKey
                                        {pub :: ECCPublicElGamalKey, sec :: ECCSecretElGamalKey}

newElGamalKeypair :: Curve -> Maybe Paranoia -> ECCSecretKey -> Effect {pub :: ECCPublicElGamalKey, sec :: ECCSecretElGamalKey}
newElGamalKeypair c p = runEffectFn3 newElGamalKeypairImpl c (toNullable p)

foreign import newElGamalPublicKeyImpl :: Fn2 Curve PointAffine ECCPublicElGamalKey

newElGamalPublicKey :: Curve -> PointAffine -> ECCPublicElGamalKey
newElGamalPublicKey = runFn2 newElGamalPublicKeyImpl

foreign import kemImpl :: EffectFn2 ECCPublicElGamalKey Paranoia {key :: BitArray, tag :: BitArray}

kem :: ECCPublicElGamalKey -> Paranoia -> Effect {key :: BitArray, tag :: BitArray}
kem = runEffectFn2 kemImpl

foreign import newElGamalSecretKeyImpl :: Fn2 Curve BigNumState ECCSecretElGamalKey

newElGamalSecretKey :: Curve -> BigNumState -> ECCSecretElGamalKey
newElGamalSecretKey = runFn2 newElGamalSecretKeyImpl

foreign import unkemImpl :: EffectFn2 ECCSecretElGamalKey BitArray BitArray

unkem :: ECCSecretElGamalKey -> BitArray -> Effect BitArray
unkem = runEffectFn2 unkemImpl

foreign import dhImpl :: Fn2 ECCSecretElGamalKey ECCPublicElGamalKey BitArray
foreign import dhJavaImpl :: Fn2 ECCSecretElGamalKey ECCPublicElGamalKey BitArray

dh :: ECCSecretElGamalKey -> ECCPublicElGamalKey -> BitArray
dh = runFn2 dhImpl

dhJava :: ECCSecretElGamalKey -> ECCPublicElGamalKey -> BitArray
dhJava = runFn2 dhJavaImpl

foreign import data ECCPublicEcdsaKey :: Type
foreign import data ECCSecretEcdsaKey :: Type

foreign import newEcdsaKeypairImpl :: EffectFn3 Curve (Nullable Paranoia) ECCSecretKey
                                        {pub :: ECCPublicEcdsaKey, sec :: ECCSecretEcdsaKey}

newEcdsaKeypair :: Curve -> Maybe Paranoia -> ECCSecretKey -> Effect {pub :: ECCPublicEcdsaKey, sec :: ECCSecretEcdsaKey}
newEcdsaKeypair c p = runEffectFn3 newEcdsaKeypairImpl c (toNullable p)

foreign import newEcdsaPublicKeyImpl :: Fn2 Curve PointAffine ECCPublicEcdsaKey

newEcdsaPublicKey :: Curve -> PointAffine -> ECCPublicEcdsaKey
newEcdsaPublicKey = runFn2 newEcdsaPublicKeyImpl

foreign import verifyImpl :: EffectFn4 ECCPublicEcdsaKey BitArray BitArray Boolean Boolean

verify :: ECCPublicEcdsaKey -> BitArray -> BitArray -> Boolean -> Effect Boolean
verify = runEffectFn4 verifyImpl

foreign import newEcdsaSecretKeyImpl :: Fn2 Curve BigNumState ECCSecretEcdsaKey

newEcdsaSecretKey :: Curve -> BigNumState -> ECCSecretEcdsaKey
newEcdsaSecretKey = runFn2 newEcdsaSecretKeyImpl

foreign import signImpl :: EffectFn4 ECCSecretEcdsaKey BitArray Paranoia Boolean BitArray

sign :: ECCSecretEcdsaKey -> BitArray -> Paranoia -> Boolean -> Effect BitArray
sign = runEffectFn4 signImpl
