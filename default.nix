{ 
  pkgs ? import <nixos-unstable> {} 
}:
{
  neovim = pkgs.callPackage ./pkgs/neovim {}; 
}
