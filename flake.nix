{
  description = "Salorak templates for daily use";

  outputs = {self, ...}: {
    templates = {
      rust-toolchain = {
        path = ./devshells/rust-toolchain;
        description = "Rust Oxalica's devshell";
      };
    };
  };
}
