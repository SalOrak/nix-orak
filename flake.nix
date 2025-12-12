{
  description = "Salorak templates for daily use";

  outputs = {self, ...}: {
    templates = {
      rust-toolchain = {
        path = ./devshells/rust-toolchain.nix;
        description = "Rust Oxalica's devshell";
      };
    };
  };
}
