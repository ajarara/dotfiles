

        # not actually used here, but a good example of what config.nix can do
{
  packageOverrides = pkgs: {
    znc = pkgs.znc.override {
      withPython = true;
      withPerl = true;
    };
  };
}

