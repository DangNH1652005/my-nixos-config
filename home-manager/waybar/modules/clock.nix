{ config, pkgs, ... }:

{
  programs.waybar.settings.mainBar.clock = {
    format = "󰥔  {:%H:%M}";
    tooltip-format = "{:%A, %d %B %Y}";
  };
}
