{-
Welcome to a Spago project!
You can edit this file as you like.
-}
{ name = "bip39"
, dependencies =
  [ "arraybuffer-types", "nullable" ]
, packages = ./packages.dhall
, sources = [ "src/**/*.purs" ]
}
