{
  pkgs,
  fetchurl,
  lib
}:
with pkgs.python314Packages;

buildPythonPackage rec {
  pname = "pyrefly";
  version = "0.41.3";
  # pyproject = true;
  format = "wheel";
  python = "py3";
  abi = "none";
  platform = "manylinux_2_17_x86_64.manylinux2014_x86_64";
  sha256 = "37d0c8e0aca9c693574304daa076267a732560521ee470743bdd2fe14f272175";
  hash = "f2/8c/80d6b32758f2f15cf59b148b469a889c557e13cde8042e38bb8fe4c211da"
  url = "https://files.pythonhosted.org/packages/${hash}/${pname}-${version}-${python}-${abi}-${platform}.whl";
  src = fetchurl {
    inherit url sha256
  };
  doCheck = false;
  meta = with lib; {
    description = "Pyrefly latest";
    homepage = "https://github.com/facebook/pyrefly";
  };
  build-system = [
    setuptools
  ];
}
