module Data.ArrayBuffer.BIP39
  ( entropyToMnemonic, mnemonicToEntropy
  ) where

import Prelude
import Data.Maybe (Maybe)
import Data.ArrayBuffer.Types (Uint8Array)
import Data.Nullable (Nullable, toMaybe)


foreign import entropyToMnemonicImpl :: Uint8Array -> Nullable String

foreign import mnemonicToEntropyImpl :: String -> Nullable Uint8Array


entropyToMnemonic :: Uint8Array -> Maybe String
entropyToMnemonic = toMaybe <<< entropyToMnemonicImpl

mnemonicToEntropy :: String -> Maybe Uint8Array
mnemonicToEntropy = toMaybe <<< mnemonicToEntropyImpl
