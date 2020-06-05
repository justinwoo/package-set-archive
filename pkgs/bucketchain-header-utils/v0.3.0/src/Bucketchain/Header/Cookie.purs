module Bucketchain.Header.Cookie
  ( Cookie
  , SameSite(..)
  , addCookie
  , getCookies
  ) where

import Prelude

import Bucketchain.Http (Http, setHeaders, requestHeaders, responseHeaders)
import Data.Array (snoc, (!!))
import Data.Int (ceil)
import Data.Maybe (Maybe(..), fromMaybe)
import Data.String (Pattern(..), split, trim, joinWith)
import Data.Time.Duration (Seconds(..))
import Data.Tuple (Tuple(..))
import Effect (Effect)
import Foreign.Object (Object, lookup, empty, fromFoldable)

-- | The cookie payload.
type Cookie =
  { key :: String
  , value :: String
  , domain :: Maybe String
  , path :: Maybe String
  , maxAge :: Maybe Seconds
  , secure :: Boolean
  , httpOnly :: Boolean
  , sameSite :: Maybe SameSite
  }

-- | The SameSite directive.
data SameSite
  = Strict
  | Lax

derive instance eqSameSite :: Eq SameSite
derive instance ordSameSite :: Ord SameSite

instance showSameSite :: Show SameSite where
  show Strict = "Strict"
  show Lax = "Lax"

-- | Add a cookie.
addCookie :: Http -> Cookie -> Effect Unit
addCookie http pld =
  setHeaders http "Set-Cookie" $ snoc resCookies $ toField pld
  where
    resCookies = responseHeaders http "set-cookie"

toField :: Cookie -> String
toField pld =
  joinWith "; "
    <<< setSameSite pld
    <<< setHttpOnly pld
    <<< setSecure pld
    <<< setMaxAge pld
    <<< setPath pld
    <<< setDomain pld
    $ [ pld.key <> "=" <> pld.value ]

setDomain :: Cookie -> Array String -> Array String
setDomain pld xs =
  case pld.domain of
    Nothing -> xs
    Just d -> snoc xs $ "Domain=" <> d

setPath :: Cookie -> Array String -> Array String
setPath pld xs =
  case pld.path of
    Nothing -> xs
    Just p -> snoc xs $ "Path=" <> p

setMaxAge :: Cookie -> Array String -> Array String
setMaxAge pld xs =
  case pld.maxAge of
    Nothing -> xs
    Just (Seconds sec) ->
      snoc xs $ "Max-Age=" <> show (ceil sec)

setSecure :: Cookie -> Array String -> Array String
setSecure pld xs =
  if pld.secure
    then snoc xs "Secure"
    else xs

setHttpOnly :: Cookie -> Array String -> Array String
setHttpOnly pld xs =
  if pld.httpOnly
    then snoc xs "HttpOnly"
    else xs

setSameSite :: Cookie -> Array String -> Array String
setSameSite pld xs =
  case pld.sameSite of
    Nothing -> xs
    Just s -> snoc xs $ "SameSite=" <> show s

-- | Get cookies.
getCookies :: Http -> Object String
getCookies http =
  case getCookieStr http of
    Nothing -> empty
    Just str ->
      fromFoldable $ map (trim >>> toTuple) $ split (Pattern ";") str

getCookieStr :: Http -> Maybe String
getCookieStr = requestHeaders >>> lookup "cookie"

toTuple :: String -> Tuple String String
toTuple str =
  let ary = split (Pattern "=") str
      key = fromMaybe "" $ ary !! 0
      val = fromMaybe "" $ ary !! 1
   in Tuple key val
