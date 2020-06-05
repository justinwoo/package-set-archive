{-
Welcome to a Spago project!
You can edit this file as you like.
-}
{ name = "uint-instances"
, dependencies =
  [ "uint", "unordered-collections", "argonaut", "quickcheck" ]
, packages = ./packages.dhall
, sources = [ "src/**/*.purs" ]
}
