{
  description = "Salorak templates for daily use";

  outputs = {self, ...}: {
    templates = {
      rust-toolchain = {
        path = ./devshells;
        description = "Rust Oxalica's devshell";
      };
    };
  };
}
