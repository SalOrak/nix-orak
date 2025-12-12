{
  description = "DevShell for Rust";
  inputs = {
    nixpkgs.url = github:nixos/nixpkgs/nixos-unstable;
    rust-overlay.url = github:oxalica/rust-overlay;
    flake-utils.url = github:numtide/flake-utils;
  };
  outputs = {
    self,
    nixpkgs,
    rust-overlay,
    flake-utils,
  }:
    flake-utils.lib.eachDefaultSystem (
      system: let
        overlays = [(import rust-overlay)];
        pkgs = import nixpkgs {inherit overlays system;};
      in {
        devShells.default = pkgs.mkShell {
          packages = with pkgs; [
            pkg-config

            (rust-bin.fromRustupToolchain
              {
                # Channels: stable, beta and nightly
                channel = "stable";
                components = [
                  # Components:
                  # https://rust-lang.github.io/rustup/concepts/components.html
                  # "cargo"
                  # "rust-std"
                  # "rust-docs"
                  # "rust-analyzer"
                  # "clippy"
                  # "miri"
                  # "rust-mingw"
                  # "miri"
                  "rust-src"
                  "rustfmt"
                  "rustc-dev"
                  "llvm-tools"
                ];

                # Targets:
                # https://doc.rust-lang.org/stable/rustc/platform-support.html
                targets = [
                  "x86_64-unknown-linux-gnu"
                  "thumbv7em-none-eabihf"
                ];
              })
          ];
        };
      }
    );
}
