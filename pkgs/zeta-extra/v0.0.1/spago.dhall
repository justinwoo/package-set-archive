{-
Welcome to a Spago project!
You can edit this file as you like.
-}
{ name = "zeta-extra"
, dependencies =
  [ "js-timers", "web-html", "zeta" ]
, packages = ./packages.dhall
, sources = [ "src/**/*.purs" ]
}
