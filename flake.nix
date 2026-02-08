{
  description = "Elliot's nixvim configuration";

  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs/nixos-unstable";
    nixvim.url = "github:nix-community/nixvim";
    flake-parts.url = "github:hercules-ci/flake-parts";
  };

  outputs =
    {
      nixvim,
      nixpkgs,
      ...
    }@inputs:
    let
      system = "x86_64-linux";
      nixpkgs' = import nixpkgs {
        inherit system;
        config.allowUnfree = true;
      };
      nixvimLib = nixvim.lib.${system};
      nixvim' = nixvim.legacyPackages.${system};
      nixvimModule = {
        pkgs = nixpkgs';
        module = import ./config; # import the module directly
        # You can use `extraSpecialArgs` to pass additional arguments to your module files
        extraSpecialArgs = {
          # inherit (inputs) foo;
        };
      };
      nvim = nixvim'.makeNixvimWithModule nixvimModule;
    in
    {
      checks.${system}.default = nixvimLib.check.mkTestDerivationFromNixvimModule nixvimModule;

      packages.${system}.default = nvim;
    };
}
