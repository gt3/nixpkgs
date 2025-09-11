{ pkgs ? import <nixos-unstable> {} }:
{
  neovim = (import ./pkgs/neovim);
}
