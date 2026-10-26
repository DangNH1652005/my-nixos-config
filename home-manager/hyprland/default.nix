{ config, pkgs, ... }:
{
  wayland.windowManager.hyprland = {
    enable = true;

    extraConfig = builtins.readFile ../../config/hypr/hyprland.lua;
  };

  xdg.configFile."hypr/modules".source = ../../config/hypr/modules;
}
