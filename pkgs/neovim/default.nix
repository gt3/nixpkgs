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
    sha256 = "b52106a73c15c2b9ae3ec0de2a32ff7f1e3c2991af21243e7a3935e5907dd7f7";
    # sha256 = "IDOEnV4oLHptb0DJ0uTsV9l0JJMzccQpvS4MYlBSeKk=";
  };
  installPhase = ''
    cp -r $src/. $out
  '';
  meta = with lib; {
    description = "Neovim nightly";
    homepage = "https://github.com/neovim/neovim";
  };
}
