with import <nixpkgs> {};

stdenv.mkDerivation {
    name = "my-project";
    src = ./.;
    buildInputs = [
      nodejs
      yarn
    ];
    installPhase = ''
      export HOME=$(pwd)
      yarn
      touch $out
    '';
}
