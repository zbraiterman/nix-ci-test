with import <nixpkgs> {};

stdenv.mkDerivation {
    name = "my-project";
    src = ./.;
    buildInputs = [
      nodejs
    ];
    installPhase = ''
      export HOME=$(pwd)
      npm install
      touch $out
    '';
}
