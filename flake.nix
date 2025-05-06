{
  description = "NixOS Configuration";

  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-24.11";
  };

  outputs = { self, nixpkgs, ... }:
    let
      lib = nixpkgs.lib;
    in {
    nixosConfigurations = {
      Andromeda = lib.nixosSystem {
        system = "x86_64-linux";
        modules = [
          ./hardware-configuration.nix
          ./Andromeda/andromeda.nix
        ];
      };
    };
  };
}
