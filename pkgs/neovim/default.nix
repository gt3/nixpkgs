{stdenv, fetchzip, lib}:
stdenv.mkDerivation rec {
  name = "nvim-linux-x86_64";
  version = "v0.11.4";
  src = fetchzip {
    url = "https://github.com/neovim/neovim/releases/download/${version}/${name}.tar.gz";
    sha256 = "D95uJHRy/B/AJi2bCmFh8PZnr/Dm7FWmrvgkPAUiLcE=";
  };
  installPhase = ''
    cp -r $src/. $out
  '';
  meta = with lib; {
    description = "Neovim latest stable release";
    homepage = "https://github.com/gt3/nixos-channel/pkgs/neovim";
  };
}
