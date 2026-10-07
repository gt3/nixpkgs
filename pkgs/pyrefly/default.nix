{
  pkgs,
  fetchurl,
  lib
}:
with pkgs.python314Packages;

buildPythonPackage rec {
  pname = "pyrefly";
  version = "1.3.2";
  # pyproject = true; # https://pypi.org/project/pyrefly/1.3.2/#files
  format = "wheel";
  python = "py3";
  abi = "none";
  platform = "manylinux_2_17_x86_64.manylinux2014_x86_64";
  # sha256 = "30a68ff5429a1546ec08a2d913dfe442c9553a2940d274de18833d8eda939b5e";
  sha256 = "y5Q2X+X4VMtP6C9gDE4kUxYNMoYQsSmBAEhR7gtuius=";
  hash = "4f/d1/52d9ea1b7048c7316d9ff7594c170b1c06d37547a75d140c8deea7b9ddfd";
  url = "https://files.pythonhosted.org/packages/${hash}/${pname}-${version}-${python}-${abi}-${platform}.whl";
  src = fetchurl {
    inherit url sha256;
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
