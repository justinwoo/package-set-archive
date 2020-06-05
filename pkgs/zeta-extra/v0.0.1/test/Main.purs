module Test.Main where

import Zeta (subscribe, set, get, make)
import Zeta.Time (every, delay, since, debounce) as Z

import Prelude
import Data.Time.Duration (Milliseconds (..))
import Data.Array (length) as Array
import Data.Int (round)
import Effect (Effect)
import Effect.Aff (Aff, launchAff, delay)
import Effect.Class (liftEffect)
import Effect.Exception (throw)
import Effect.Console (log)
import Effect.Timer (clearInterval)
import Effect.Ref (new, read, modify) as Ref


main :: Effect Unit
main = do
  timeTests


timeTests :: Effect Unit
timeTests = do
  log "Time tests:"
  log " - every test:"
  everyTest
  log " - delay test:"
  delayTest
  log " - since test:"
  sinceTest
  log " - debounce test:"
  debounceTest
  where

    everyTest :: Effect Unit
    everyTest = do
      {id,signal} <- Z.every (Milliseconds second)
      arrayRef <- Ref.new []
      let addToArray :: _ -> Effect Unit
          addToArray x = void (Ref.modify (_ <> [x]) arrayRef)
      subscribe addToArray signal
      void $ launchAff do
        -- delay to sidestep race condition
        delay (Milliseconds (0.2 * second))
        delay (Milliseconds (2.0 * second))
        liftEffect do
          clearInterval id
          array <- Ref.read arrayRef
          if Array.length array == 3
            then log "every test ok!"
            else throw $ "Not 5 in length: " <> show (Array.length array)


    delayTest :: Effect Unit
    delayTest = do
      sig <- make 1
      newSig <- Z.delay (Milliseconds second) sig
      set 2 sig
      newVal1 <- get newSig
      case newVal1 of
        1 -> pure unit
        2 -> throw "new value without delay!"
        _ -> throw $ "unexpected value: " <> show newVal1
      void $ launchAff do
        delay (Milliseconds second)
        liftEffect do
          newVal2 <- get newSig
          case newVal2 of
            1 -> throw "old value!"
            2 -> log "delay test ok!"
            _ -> throw $ "unexpected value: " <> show newVal2


    sinceTest :: Effect Unit
    sinceTest = do
      sig <- make 1
      newSig <- Z.since (Milliseconds second) sig
      set 2 sig
      newVal1 <- get newSig
      if newVal1
        then pure unit
        else throw "new value without delay!"
      void $ launchAff do
        delay (Milliseconds second)
        liftEffect do
          newVal2 <- get newSig
          if not newVal2
            then log "since test ok!"
            else throw "old value!"


    debounceTest :: Effect Unit
    debounceTest = do
      sig <- make 1
      newSig <- Z.debounce (Milliseconds second) sig
      changesVar <- Ref.new []
      let recordChanges x = void (Ref.modify (_ <> [x]) changesVar)
      subscribe recordChanges newSig
      set 2 sig
      set 2 sig
      set 2 sig
      set 2 sig
      void $ launchAff do
        delay (Milliseconds second)
        liftEffect do
          changes <- Ref.read changesVar
          if changes == [1,2]
            then log "debounce test ok!"
            else throw $ "More than one change in under debounce time! " <> show (Array.length changes)


second :: Number
second = 1000.0





