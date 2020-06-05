module Zeta.Time where

import Zeta.Types (READ, WRITE)
import Zeta (Signal, make, set, get, subscribe)

import Prelude (bind, (=<<), discard, pure, ($), unit, void, (>>=))
import Data.DateTime.Instant (Instant)
import Data.Time.Duration (Milliseconds (..))
import Data.Int (round)
import Data.Maybe (Maybe (..))
import Effect (Effect)
import Effect.Ref (new, read, write) as Ref
import Effect.Now (now)
import Effect.Timer (setInterval, setTimeout, clearTimeout, IntervalId)


-- | Every `n` milliseconds, relay the current instant in the signal. Also, return the
-- | `IntervalId` that is writing to the signal.
every :: Milliseconds -> Effect {signal :: Signal (write :: WRITE, read :: READ) Instant, id :: IntervalId}
every (Milliseconds t) = do
  signal <- make =<< now
  id <- setInterval (round t) (now >>= \i -> set i signal)
  pure {signal,id}


-- | Create a new signal, which re-emits written values to the input signal,
-- | but by a delay of `n` milliseconds.
delay :: forall rw a
       . Milliseconds
      -> Signal (read :: READ | rw) a
      -> Effect (Signal (read :: READ, write :: WRITE) a)
delay (Milliseconds t) sig = do
  out <- make =<< get sig
  subscribe (\x -> void $ setTimeout (round t) (set x out)) sig
  pure out


-- | Is `true` if the signal has been written to before `n` milliseconds -
-- | `false` if after the time limit.
since :: forall rw a
       . Milliseconds
      -> Signal (read :: READ | rw) a
      -> Effect (Signal (read :: READ, write :: WRITE) Boolean)
since (Milliseconds t) sig = do
  threadRef <- Ref.new Nothing
  out <- make true
  let spawn = setTimeout (round t) do
        Ref.write Nothing threadRef
        set false out
  thread <- spawn
  Ref.write (Just thread) threadRef
  let onSigChange _ = do
        mThread <- Ref.read threadRef
        case mThread of
          Nothing -> pure unit
          Just thread' -> clearTimeout thread'
        set true out
        thread' <- spawn
        Ref.write (Just thread') threadRef
  subscribe onSigChange sig
  pure out


-- | Re-emits changes to the input signal, only if the change occurred
-- | after the time limit.
debounce :: forall rw a
          . Milliseconds
         -> Signal (read :: READ | rw) a
         -> Effect (Signal (read :: READ, write :: WRITE) a)
debounce (Milliseconds t) sig = do
  threadRef <- Ref.new Nothing
  out <- make =<< get sig
  let onSigChange x = do
        mThread <- Ref.read threadRef
        case mThread of
          Nothing -> pure unit
          Just thread -> clearTimeout thread
        thread <- setTimeout (round t) do
          Ref.write Nothing threadRef
          set x out
        Ref.write (Just thread) threadRef
  subscribe onSigChange sig
  pure out
