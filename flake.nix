{
  description = "Salorak templates for daily use";

  outputs = {self, ...}: {
    templates = {
      rust = {
        path = ./devshells/rust;
        description = "Rust Oxalica's devshell";
      };
      rust-embedded = {
        path = ./devshells/rust-embedded;
        description = "Embedded Rust Oxalica's devshell";
      };
    };
  };
}
