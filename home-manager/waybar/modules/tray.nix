{ config, pkgs, ... }:

{
  programs.waybar.settings.mainBar.tray = {
    icon-size = 16;
    spacing = 6;
  };
}
