{ pkgs ? import <nixpkgs> {} }:

with pkgs;

mkShell {
  buildInputs = [
    nodejs
    nixpkgs.python39Packages.xhtml2pdf
  ];
}
