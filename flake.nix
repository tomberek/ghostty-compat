{
  inputs.nixpkgs-unstable.url = "github:NixOS/nixpkgs/nixpkgs-unstable";
  inputs.ghostty = {
          url = "git+ssh://git@github.com/ghostty-org/ghostty";
          inputs.nixpkgs-stable.follows = "nixpkgs-unstable";
          inputs.nixpkgs-unstable.follows = "nixpkgs-unstable";
        };
  outputs =
    inputs: {
      packages = inputs.ghostty.packages;
    };
}

