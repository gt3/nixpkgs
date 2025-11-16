{
  pkgs,
  fetchPypi,
  lib
}:
with pkgs.python314Packages;

buildPythonPackage rec {
  pname = "pyrefly";
  version = "0.41.3";
  pyproject = true;
  format = "wheel";
  python = "py3";
  platform = "manylinux_2_17_x86_64.manylinux2014_x86_64";
  src = fetchPypi {
    inherit pname version format python platform;
    sha256 = "37d0c8e0aca9c693574304daa076267a732560521ee470743bdd2fe14f272175";
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
