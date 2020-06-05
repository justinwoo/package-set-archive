#!/usr/bin/env nix-shell
#!nix-shell ./generate-purs-packages.nix --run exit

{ pkgs ? import <nixpkgs> {} }:
let
  psc-package-nix = pkgs.fetchFromGitHub {
    owner = "justinwoo";
    repo = "psc-package-nix";
    rev = "dcded6dc74c31208995cfb6666da026b1469b660";
    sha256 = "1zyn0d0373l2lprb1am3p1404yznlxrjcl4nwf23mlnyq3xqkzvq";
  };

  json = builtins.fromJSON (builtins.readFile ../packages.json);
  pkg-specs-json = pkgs.writeTextFile {
    name = "package-specs.json";
    text = builtins.toJSON json;
  };
in
pkgs.mkShell {
  buildInputs = [
    pkgs.nix-prefetch-git
    pkgs.nodejs
  ];
  shellHook = ''
    node ${psc-package-nix}/src/generate-purs-packages-nix.js ${pkg-specs-json} > purs-packages.nix
  '';
}
