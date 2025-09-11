{ pkgs ? import <nixos-unstable> {}, lib }:
{
  neovim = (import ./pkgs/neovim); 
}
