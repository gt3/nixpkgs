{ pkgs ? import <nixos-unstable> { config = { allowUnfree = true; }; } }:
{
  neovim = pkgs.callPackage ./pkgs/neovim {};
}
