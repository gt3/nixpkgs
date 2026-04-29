{
  pkgs,
  fetchurl,
  lib
}:
with pkgs.python314Packages;

buildPythonPackage rec {
  pname = "pyrefly";
  version = "0.63.1";
  # pyproject = true;
  format = "wheel";
  python = "py3";
  abi = "none";
  platform = "manylinux_2_17_x86_64.manylinux2014_x86_64";
  sha256 = "d53ec1f8711b24b1e992309b978b219daf2335201f26acafa86f14fbb81804ec";
  hash = "15/d5/f0c9e6938c3f1231405ee77045b2b51c349d1a6aa84ba8717f4829f64bbc";
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
