{
  description = "NixOS server flake";

  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs?ref=nixos-unstable";
  };

  outputs = inputs@{ self, nixpkgs, ... }: { 
    nixosConfigurations.default = nixpkgs.lib.nixosSystem {
      	system = "x86_64-linux";
        modules = [ ./configuration.nix ];
    };
  };
}
