module Data.String.Normalize where


foreign import nfd :: String -> String
foreign import nfc :: String -> String
foreign import nfkd :: String -> String
foreign import nfkc :: String -> String
