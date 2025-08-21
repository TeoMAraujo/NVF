{
  description = "Floco do Teu Pai";

    inputs = {
        nixpkgs.url = "github:nixos/nixpkgs?ref=nixos-24.11";
        #format = name.url = "github:github username/github repo/ branch"
    };

    outputs = { self, nixpkgs, ... }@inputs:
    let 
        pkgs = nixpkgs.legacyPackages.x86_64-linux.hello;
    in{        
        packages.x86_64-linux.hello;:
        packages.x86_64-linux.default;
    };

}
