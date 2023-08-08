with import <nixpkgs> {};

stdenv.mkDerivation {
    name = "my-project";
    src = ./.;
    buildInputs = [
      nodejs
    ];
    installPhase = ''
      npm install
      cp -R *.js $out
    '';
}
