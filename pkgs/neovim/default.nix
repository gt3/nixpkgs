{
  stdenv,
  fetchzip,
  lib
}:
stdenv.mkDerivation rec {
  name = "nvim-linux-x86_64";
  version = "nightly";
  src = fetchzip {
    url = "https://github.com/neovim/neovim/releases/download/${version}/${name}.tar.gz";
    sha256 = "Ov43wcv7Zqcs3TTpqHRYavFA2uA9s2m5Y4AdRdJZ6BU=";
  };
  installPhase = ''
    cp -r $src/. $out
  '';
  meta = with lib; {
    description = "Neovim nightly";
    homepage = "https://github.com/neovim/neovim";
  };
}
