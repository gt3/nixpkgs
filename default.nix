{ pkgs ? import <nixos-unstable> { config = { allowUnfree = true; }; } }:
{
  neovim = (import ./pkgs/neovim);
}
