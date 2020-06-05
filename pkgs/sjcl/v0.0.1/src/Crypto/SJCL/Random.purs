module Crypto.SJCL.Random
  ( PRNG, prng, new, RandomState
  , randomWords, setDefaultParanoia
  , EntropySource, loadTime, mouse, keyboard, accelerometer, touch
  , addEntropy, isReady, getProgress, startCollectors, stopCollectors, random
  ) where

import Crypto.SJCL.Types (Word, Paranoia)

import Prelude (Unit, eq, (<$>))
import Data.Nullable (Nullable, toNullable)
import Data.Maybe (Maybe)
import Effect (Effect)
import Effect.Uncurried (EffectFn1, EffectFn2, EffectFn3, EffectFn4, runEffectFn1, runEffectFn2, runEffectFn3, runEffectFn4)


foreign import data PRNG :: Type

foreign import prng :: PRNG

foreign import data RandomState :: Type

foreign import newImpl :: EffectFn1 Paranoia RandomState

new :: Paranoia -> Effect RandomState
new = runEffectFn1 newImpl

foreign import randomWordsImpl :: EffectFn3 RandomState Int (Nullable Paranoia) (Array Word)

randomWords :: RandomState -> Int -> Maybe Paranoia -> Effect (Array Word)
randomWords s i p = runEffectFn3 randomWordsImpl s i (toNullable p)

foreign import setDefaultParanoiaImpl :: EffectFn2 RandomState Paranoia Unit

setDefaultParanoia :: RandomState -> Paranoia -> Effect Unit
setDefaultParanoia = runEffectFn2 setDefaultParanoiaImpl


newtype EntropySource = EntropySource String

loadTime :: EntropySource
loadTime = EntropySource "loadTime"
mouse :: EntropySource
mouse = EntropySource "mouse"
keyboard :: EntropySource
keyboard = EntropySource "keyboard"
accelerometer :: EntropySource
accelerometer = EntropySource "accelerometer"
touch :: EntropySource
touch = EntropySource "touch"


foreign import addEntropyImpl :: EffectFn4 RandomState (Array Int) Int EntropySource Unit

addEntropy :: RandomState -> Array Int -> Int -> EntropySource -> Effect Unit
addEntropy = runEffectFn4 addEntropyImpl

foreign import isReadyImpl :: EffectFn2 RandomState (Nullable Paranoia) Int

isReady :: RandomState -> Maybe Paranoia -> Effect Boolean
isReady s p = eq 1 <$> runEffectFn2 isReadyImpl s (toNullable p)

foreign import getProgressImpl :: EffectFn2 RandomState (Nullable Paranoia) Number

getProgress :: RandomState -> Maybe Paranoia -> Effect Number
getProgress s p = runEffectFn2 getProgressImpl s (toNullable p)

foreign import startCollectorsImpl :: EffectFn1 RandomState Unit

startCollectors :: RandomState -> Effect Unit
startCollectors = runEffectFn1 startCollectorsImpl

foreign import stopCollectorsImpl :: EffectFn1 RandomState Unit

stopCollectors :: RandomState -> Effect Unit
stopCollectors = runEffectFn1 stopCollectorsImpl


foreign import random :: RandomState
