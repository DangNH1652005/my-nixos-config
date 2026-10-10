{ config, pkgs, ... }:

{
  programs.waybar.settings.mainBar = {
    layer = "top";
    position = "top";
    height = 32;
    spacing = 4;

    modules-left = [
      "hyprland/workspaces"
      "hyprland/window"
    ];

    modules-center = [
      "clock"
    ];

    modules-right = [
      "tray"
      "network"
      "pulseaudio"
      "battery"
    ];
  };
}
