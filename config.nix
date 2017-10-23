

{
  allowUnfree = true;
  packageOverrides = pkgs: {
    znc = pkgs.znc.override {
      withPython = true;
      withPerl = true;
    };
  };
}

