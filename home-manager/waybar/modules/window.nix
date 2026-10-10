{ config, pkgs, ... }:

{
  programs.waybar.settings.mainBar."hyprland/window" = {
    format = "󰣆  {}";
    max-length = 40;
  };
}
