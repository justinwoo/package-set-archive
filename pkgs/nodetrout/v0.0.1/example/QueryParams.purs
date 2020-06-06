module Example.QueryParams where

import Prelude
import Control.Monad.Except (ExceptT)
import Data.Maybe (Maybe(..))
import Data.Traversable (traverse_)
import Effect (Effect)
import Effect.Console (log)
import Node.HTTP (createServer, listen)
import Nodetrout (HTTPError, serve')
import Text.Smolder.HTML (html, li, ul)
import Text.Smolder.HTML.Attributes (lang)
import Text.Smolder.Markup ((!), text)
import Type.Proxy (Proxy(..))
import Type.Trout (type (:=), type (:>), QueryParams, Resource)
import Type.Trout.ContentType.HTML (class EncodeHTML, HTML)
import Type.Trout.Method (Get)

newtype List = List (Array String)

instance encodeHTMLList :: EncodeHTML List where
  encodeHTML (List items) = html ! lang "en" $ ul $ traverse_ (li <<< text) items

type Site = "list" := QueryParams "item" String :> Resource (Get List HTML)

site :: Proxy Site
site = Proxy

resources :: forall m. Monad m => { list :: Array String -> { "GET" :: ExceptT HTTPError m List } }
resources = { list: \items -> { "GET": pure $ List items } }

main :: Effect Unit
main = do
  server <- createServer $ serve' site resources (const $ pure unit)
  listen server { hostname: "0.0.0.0", port: 3000, backlog: Nothing } $ log "Listening on port 3000..."
