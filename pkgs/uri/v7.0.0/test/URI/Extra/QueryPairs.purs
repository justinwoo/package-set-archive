module Test.URI.Extra.QueryPairs where

import Prelude

import Data.Maybe (Maybe(..))
import Data.Tuple (Tuple(..))
import Test.Spec (Spec, describe)
import Test.Util (testIso)
import URI.Common (wrapParser)
import URI.Extra.QueryPairs as NQP
import URI.Query as Query

spec ∷ Spec Unit
spec =
  describe "QueryPairs printer/parser" do
    let parser = wrapParser (NQP.parse pure pure) Query.parser
    let printer = Query.print <<< NQP.print identity identity
    testIso parser printer
      "?key1=value1&key2=value2&key1=value3"
      (NQP.QueryPairs
        [ Tuple (NQP.unsafeKeyFromString "key1") (Just (NQP.unsafeValueFromString "value1"))
        , Tuple (NQP.unsafeKeyFromString "key2") (Just (NQP.unsafeValueFromString "value2"))
        , Tuple (NQP.unsafeKeyFromString "key1") (Just (NQP.unsafeValueFromString "value3"))
        ])
    testIso parser printer
      "?k%3Dey=value%3D1%3B2"
      (NQP.QueryPairs
        [ Tuple (NQP.unsafeKeyFromString "k%3Dey") (Just (NQP.unsafeValueFromString "value%3D1%3B2")) ])
    testIso parser printer
      "?k%3Dey=value%3D1%3B2"
      (NQP.QueryPairs
        [ Tuple (NQP.keyFromString "k=ey") (Just (NQP.valueFromString "value=1;2")) ])
    testIso parser printer
      "?"
      (NQP.QueryPairs [])
    testIso parser printer
      "?key1=&key2="
      (NQP.QueryPairs
        [ Tuple (NQP.unsafeKeyFromString "key1") (Just (NQP.unsafeValueFromString ""))
        , Tuple (NQP.unsafeKeyFromString "key2") (Just (NQP.unsafeValueFromString ""))
        ])
    testIso parser printer
      "?key1&key2"
      (NQP.QueryPairs
        [ Tuple (NQP.unsafeKeyFromString "key1") Nothing
        , Tuple (NQP.unsafeKeyFromString "key2") Nothing
        ])
    testIso parser printer
      "?key1=foo%3Bbar"
      (NQP.QueryPairs
        [ Tuple (NQP.unsafeKeyFromString "key1") (Just (NQP.unsafeValueFromString "foo%3Bbar"))
        ])
    testIso parser printer
      "?replicaSet=test&connectTimeoutMS=300000"
      (NQP.QueryPairs
        [ Tuple (NQP.unsafeKeyFromString "replicaSet") (Just (NQP.unsafeValueFromString "test"))
        , Tuple (NQP.unsafeKeyFromString "connectTimeoutMS") (Just (NQP.unsafeValueFromString "300000"))
        ])
    testIso parser printer
      "?fred"
      (NQP.QueryPairs
        [ Tuple (NQP.unsafeKeyFromString "fred") Nothing ])
    testIso parser printer
      "?objectClass?one"
      (NQP.QueryPairs
        [ Tuple (NQP.unsafeKeyFromString "objectClass?one") Nothing
        ])
    testIso parser printer
      "?password=&docTypeKey="
      (NQP.QueryPairs
        [ Tuple (NQP.unsafeKeyFromString "password") (Just (NQP.unsafeValueFromString ""))
        , Tuple (NQP.unsafeKeyFromString "docTypeKey") (Just (NQP.unsafeValueFromString ""))
        ])
    testIso parser printer
      "?password=pass&docTypeKey=type&queryTimeoutSeconds=20"
      (NQP.QueryPairs
        [ Tuple (NQP.unsafeKeyFromString "password") (Just (NQP.unsafeValueFromString "pass"))
        , Tuple (NQP.unsafeKeyFromString "docTypeKey") (Just (NQP.unsafeValueFromString "type"))
        , Tuple (NQP.unsafeKeyFromString "queryTimeoutSeconds") (Just (NQP.unsafeValueFromString "20"))
        ])
