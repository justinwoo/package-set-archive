module Bucketchain.Logger.HTTP.Tokenizer
  ( Tokenizer
  , runTokenizer
  ) where

import Prelude

import Control.Monad.Reader (class MonadAsk, class MonadReader, ReaderT, runReaderT)
import Data.JSDate (JSDate)
import Effect (Effect)
import Effect.Class (class MonadEffect)

-- | The type of a tokenizer. It has a start date information.
newtype Tokenizer a = Tokenizer (ReaderT JSDate Effect a)

derive newtype instance functorTokenizer :: Functor Tokenizer
derive newtype instance applyTokenizer :: Apply Tokenizer
derive newtype instance applicativeTokenizer :: Applicative Tokenizer
derive newtype instance bindTokenizer :: Bind Tokenizer
derive newtype instance monadTokenizer :: Monad Tokenizer
derive newtype instance monadEffectTokenizer :: MonadEffect Tokenizer
derive newtype instance monadAskTokenizer :: MonadAsk JSDate Tokenizer
derive newtype instance monadReaderTokenizer :: MonadReader JSDate Tokenizer

-- | Run a tokenizer. Second argument is start date.
runTokenizer :: forall a. Tokenizer a -> JSDate -> Effect a
runTokenizer (Tokenizer x) = runReaderT x
