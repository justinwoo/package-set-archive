module Bucketchain.Logger.HTTP.LTSV where

import Prelude

import Bucketchain.Http (onFinish)
import Bucketchain.Middleware (Middleware)
import Bucketchain.Logger.HTTP.Token (Token, label, tokenizer)
import Bucketchain.Logger.HTTP.Tokenizer (runTokenizer)
import Control.Monad.Reader (ask)
import Data.Array (zip)
import Data.JSDate (now)
import Data.String (joinWith)
import Data.Tuple (Tuple(..))
import Data.Traversable (sequence)
import Effect.Class (liftEffect)
import Node.Encoding (Encoding(UTF8))
import Node.Process (stdout)
import Node.Stream (writeString)

-- | LTSV HTTP logger.
withHTTPLogger :: Array Token -> Middleware
withHTTPLogger tokens next = do
  s <- liftEffect now
  http <- ask
  liftEffect $ onFinish http do
    let tokenize token = runTokenizer (tokenizer token http) s
        labels =  label <$> tokens
    vs <- sequence $ tokenize <$> tokens
    let msg = joinWith "\t" $ part <$> zip labels vs
    void $ writeString stdout UTF8 (msg <> "\n") $ pure unit
  next
  where
    part (Tuple l v) = l <> ":" <> v
