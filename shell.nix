let
  nixpkgsVer = "24.05";
  pkgs = import (fetchTarball "https://github.com/NixOS/nixpkgs/tarball/nixos-${nixpkgsVer}") { config = {}; overlays = []; };
in pkgs.mkShell {
  name = "moth-core";

  shellHook = ''
    export __SILK_INCLUDE_GLIBC="${pkgs.glibc.dev}/include"
  '';
}
