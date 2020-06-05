module Zeta.DOM where

import Zeta.Types (READ, WRITE)
import Zeta (Signal, make, set)
import Zeta.Compat (map')

import Prelude (bind, pure, (=<<), (<$>), discard, map, void, (<*>), (-), (+), when, (==))
import Data.Tuple (Tuple (..))
import Data.Maybe (Maybe (..))
import Data.Array ((..))
import Data.Array (null) as Array
import Data.Int (toNumber, round)
import Data.DateTime.Instant (Instant)
import Foreign.Object (lookup) as Object
import Effect (Effect)
import Effect.Exception (throw)
import Effect.Now (now)

import Web.HTML (window)
import Web.HTML.Window (document, requestAnimationFrame, innerWidth, innerHeight, RequestAnimationFrameId)
import Web.HTML.Window as Window
import Web.HTML.HTMLDocument (body)
import Web.HTML.HTMLDocument (toDocument) as HTMLDocument
import Web.HTML.HTMLElement (toElement) as HTMLElement
import Web.Event.Event (EventType (..))
import Web.Event.EventTarget (addEventListener, eventListener, EventListener)
import Web.DOM.Element (scrollLeft, scrollTop)
import Web.DOM.Document (documentElement)
import Unsafe.Coerce (unsafeCoerce)



keyPressed :: Int
           -> Effect
                { signal :: Signal (read :: READ, write :: WRITE) Boolean
                , keydownListener :: EventListener
                , keyupListener :: EventListener
                }
keyPressed k = do
  w <- window
  signal <- make false
  keydownListener <- eventListener (\event -> when ((unsafeCoerce event).keyCode == k) (set true signal))
  addEventListener (EventType "keydown") keydownListener false (Window.toEventTarget w)
  keyupListener <- eventListener (\event -> when ((unsafeCoerce event).keyCode == k) (set false signal))
  addEventListener (EventType "keyup") keyupListener false (Window.toEventTarget w)
  pure {signal,keydownListener,keyupListener}


mouseButton :: Int
            -> Effect
                { signal :: Signal (read :: READ, write :: WRITE) Boolean
                , mousedownListener :: EventListener
                , mouseupListener :: EventListener
                }
mouseButton m = do
  w <- window
  signal <- make false
  mousedownListener <- eventListener (\event -> when ((unsafeCoerce event).button == m) (set true signal))
  addEventListener (EventType "mousedown") mousedownListener false (Window.toEventTarget w)
  mouseupListener <- eventListener (\event -> when ((unsafeCoerce event).button == m) (set false signal))
  addEventListener (EventType "mouseup") mouseupListener false (Window.toEventTarget w)
  pure {signal,mousedownListener,mouseupListener}


type Touch =
  { id :: String
  , screenX :: Int
  , screenY :: Int
  , clientX :: Int
  , clientY :: Int
  , pageX :: Int
  , pageY :: Int
  , radiusX :: Int
  , radiusY :: Int
  , rotationAngle :: Number
  , force :: Number
  }


touch :: Effect {signal :: Signal (read :: READ, write :: WRITE) (Array Touch), touchListener :: EventListener}
touch = do
  signal <- make []
  let report event = do
        let l = (unsafeCoerce event).touches.length
            xs = map (\i -> (unsafeCoerce event).touches.item i) (0 .. (l-1))
        set xs signal
  w <- window
  touchListener <- eventListener report
  addEventListener (EventType "touchstart")  touchListener false (Window.toEventTarget w)
  addEventListener (EventType "touchend")    touchListener false (Window.toEventTarget w)
  addEventListener (EventType "touchmove")   touchListener false (Window.toEventTarget w)
  addEventListener (EventType "touchcancel") touchListener false (Window.toEventTarget w)
  pure {signal,touchListener}


tap :: Effect {signal :: Signal (read :: READ, write :: WRITE) Boolean, touchListener :: EventListener}
tap = do
  {signal,touchListener} <- touch
  signal' <- map' (\t -> Array.null t) signal
  pure {signal:signal',touchListener}


mousePos :: Effect {signal :: Signal (read :: READ, write :: WRITE) {x :: Int, y :: Int}, mousemoveListener :: EventListener}
mousePos = do
  signal <- make {x: 0, y: 0}
  w <- window
  let go event = do
        let e = unsafeCoerce event
        case Tuple <$> Object.lookup "pageX" e <*> Object.lookup "pageY" e of
          Just (Tuple x y) -> set {x,y} signal
          Nothing -> case Tuple <$> Object.lookup "clientX" e <*> Object.lookup "clientY" e of
            Just (Tuple x y) -> do
              d <- document w
              mB <- body d
              mD <- documentElement (HTMLDocument.toDocument d)
              case Tuple <$> mB <*> mD of
                Nothing -> throw "No body!"
                Just (Tuple b d') -> do
                  bl <- scrollLeft (HTMLElement.toElement b)
                  dl <- scrollLeft d'
                  bt <- scrollTop (HTMLElement.toElement b)
                  dt <- scrollTop d'
                  set { x: round (toNumber x + bl + dl)
                      , y: round (toNumber y + bt + dt)
                      } signal
            Nothing -> throw "Mouse position not recognized!"
  mousemoveListener <- eventListener go
  addEventListener (EventType "mousemove") mousemoveListener false (Window.toEventTarget w)
  pure {signal,mousemoveListener}


animationFrame :: Effect {signal :: Signal (read :: READ, write :: WRITE) Instant, id :: RequestAnimationFrameId}
animationFrame = do
  w <- window
  signal <- make =<< now
  let go = do
        t <- now
        set t signal
        void (requestAnimationFrame go w)
  id <- requestAnimationFrame go w
  pure {signal,id}


windowDimensions :: Effect {signal :: Signal (read :: READ, write :: WRITE) {w :: Int, h :: Int}, resizeListener :: EventListener}
windowDimensions = do
  win <- window
  signal <- make =<< ((\w h -> {w,h}) <$> innerWidth win <*> innerHeight win)
  let go event = do
        w <- innerWidth win
        h <- innerHeight win
        set {w,h} signal
  resizeListener <- eventListener go
  addEventListener (EventType "resize") resizeListener false (Window.toEventTarget win)
  pure {signal,resizeListener}
