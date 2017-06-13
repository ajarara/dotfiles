
# here's an example that overrides gpmdp's gtk (won't work at runtime,
# but compiles just fine)
# {
#   packageOverrides = pkgs: {
#     google-play-music-desktop-player =
#       pkgs.google-play-music-desktop-player.override { gtk2 = pkgs.gnome3.gtk; };
#   };
# }
