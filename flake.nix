{
  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-unstable";
    nvf.url = "github:notashelf/nvf";
  };

  outputs = {nixpkgs, nvf, ...} @ inputs: {
    packages.x86_64-linux. default =
        (inputs.nvf.lib.neovimConfiguration {
          pkgs = nixpkgs.legacyPackages.x86_64-linux;
          modules = [./nvf-configuration.nix];
        }).neovim;
    nixosConfigurations.nixos = nixpkgs.lib.nixos
      modules = [
        ./configuration.nix
        nvf.nixosModules.default
      ];
    };
  };
}
