{ config, pkgs, ... }:

{
  programs.kitty.settings = {
    foreground = "#f5e6f0";
    background = "#1e1721";
    cursor = "#ffb7d5";

    # Normal colors
    color0 = "#1e1721";
    color1 = "#e06c9f";
    color2 = "#a8d5ba";
    color3 = "#f2d49b";
    color4 = "#9bb7e8";
    color5 = "#d8a7d9";
    color6 = "#91d8d0";
    color7 = "#d9c8d2";

    # Bright colors
    color8 = "#594556";
    color9 = "#ff8fbd";
    color10 = "#b8e0c8";
    color11 = "#f7dfa9";
    color12 = "#b3c8f0";
    color13 = "#e5b5e5";
    color14 = "#a8e6df";
    color15 = "#fff0f7";

    # Selection
    selection_foreground = "#1e1721";
    selection_background = "#ffb7d5";
  };
}
