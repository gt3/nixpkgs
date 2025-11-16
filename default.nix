{ 
  pkgs ? import <nixos-unstable> {} 
}:
{
  neovim = pkgs.callPackage ./pkgs/neovim {}; 
  pyrefly = pkgs.callPackage ./pkgs/pyrefly {};
}
