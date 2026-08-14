{
  description = "A Nix flake";

  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs?ref=nixos-unstable";
    systems.url = "github:nix-systems/triplet";

    flake-parts = {
      url = "github:hercules-ci/flake-parts";
      inputs.nixpkgs-lib.follows = "nixpkgs";
    };

    treefmt-nix = {
      url = "github:numtide/treefmt-nix";
      inputs.nixpkgs.follows = "nixpkgs";
    };
  };

  outputs =
    inputs@{ flake-parts, ... }:
    flake-parts.lib.mkFlake { inherit inputs; } {
      systems = import inputs.systems;
      imports = [ inputs.treefmt-nix.flakeModule ];

      perSystem =
        { pkgs, ... }:
        {
          devShells.default = pkgs.mkShellNoCC {
            packages = with pkgs; [
              gnumake
              nixfmt
            ];
          };

          treefmt.programs = {
            nixfmt.enable = true;
            mdformat.enable = true;
            mbake = {
              enable = true;
              settings.ensure_final_newline = true;
            };
            shfmt.enable = true;
            jsonfmt.enable = true;
            yamlfmt = {
              enable = true;
              settings.formatter.retain_line_breaks = true;
            };
            actionlint.enable = true;
          };

          # mdformat has no YAML frontmatter support and mangles skill
          # frontmatter (name/description) into plain markdown.
          treefmt.settings.global.excludes = [ ".claude/skills/**/*.md" ];
        };
    };
}
