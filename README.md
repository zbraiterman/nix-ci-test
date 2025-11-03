# Nix CI Test

Nix can be a useful tool in a continuous integration (CI) This repository provides a basic example of how to use Nix to run tests every time we have a pull request.

The repository includes the following files. 

* A [default entry point for nix-build](https://github.com/zbraiterman/nix-ci-test/blob/main/default.nix):  This uses the nixpkgs.stdenv.mkDerivation function to create a .drv file and a build artifact by running nix-build, which describes how to build a derivation.

* A [JavaScript file](https://github.com/zbraiterman/nix-ci-test/blob/main/test.js) that contains a test

* Defining a GitHub Actions test workflow in a [YAML file](https://github.com/zbraiterman/nix-ci-test/blob/main/.github/workflows/test.yml)