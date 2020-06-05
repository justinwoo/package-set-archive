{-
Welcome to a Spago project!
You can edit this file as you like.
-}
{ name = "sjcl"
, dependencies =
  [ "arraybuffer-types"
  , "exceptions"
  , "nullable"
  , "sized-vectors"
  , "tuples-native"
  ]
, packages = ./packages.dhall
, sources = [ "src/**/*.purs" ]
}
