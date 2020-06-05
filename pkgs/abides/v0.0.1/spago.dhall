{-
Welcome to a Spago project!
You can edit this file as you like.
-}
{ name = "abides"
, dependencies =
  [ "enums"
  , "foldable-traversable"
  ]
, packages = ./packages.dhall
, sources = [ "src/**/*.purs" ]
}
