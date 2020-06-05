#!/usr/bin/env nix-shell
#!nix-shell ./copy-packages.nix --run exit

{ pkgs ? import <nixpkgs> {} }:
let
  purs-packages = import ../purs-packages.nix { inherit pkgs; };
  pkgs-list = builtins.attrValues purs-packages;
  copy-package = x:
    let
      target = "pkgs/${x.name}/${x.version}";
    in "mkdir -p ${target} && cp --no-preserve=mode -r ${x.src}/* ${target};\n";
  copy-packages = builtins.map copy-package pkgs-list;
in
pkgs.mkShell {
  shellHook = ''
    ${builtins.toString copy-packages}
  '';
}
