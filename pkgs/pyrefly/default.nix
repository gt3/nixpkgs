{
  fetchPypi,
  lib
}:
with pkgs.python314Packages;

buildPythonPackage rec {
  pname = "pyrefly";
  version = "0.41.3";
  # pyproject = true;
  src = fetchPypi {
    inherit pname version;
    format = "wheel";
    sha256 = "37d0c8e0aca9c693574304daa076267a732560521ee470743bdd2fe14f272175";
  };
  doCheck = false;
  meta = with lib; {
    description = "Pyrefly latest";
    homepage = "https://github.com/facebook/pyrefly";
  };
  build-system = [
    pythonPackages.setuptools
  ];
}
