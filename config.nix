

{
  allowUnfree = true;
  packageOverrides = pkgs: {
    znc = pkgs.znc.override {
      withPython = true;
      withPerl = true;
    };
    all = pkgs.buildEnv {
      name = "all";
      paths = [
        pkgs.emacs
      ];
      };
  };
}

