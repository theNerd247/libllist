{ pkgs ? import <nixpkgs> {}}:

{
  libllist = pkgs.callPackage ./default.nix {};
}
