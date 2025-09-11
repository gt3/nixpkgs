{pkgs, lib}:
pkgs.stdenv.mkDerivation rec {
  name = "nvim-linux-x86_64";
  version = "v0.11.4";
  src = pkgs.fetchzip {
    url = "https://github.com/neovim/neovim/releases/download/${version}/${name}.tar.gz";
    sha256 = "D95uJHRy/B/AJi2bCmFh8PZnr/Dm7FWmrvgkPAUiLcE=";
  };
  installPhase = ''
    cp -r $src/. $out
  '';
  meta = with lib; {
    description = "Neovim latest";
    homepage = "https://github.com/neovim/neovim";
  };
}
