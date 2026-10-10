{ config, pkgs, ... }:

{
  wayland.windowManager.hyprland.settings = {
    exec_cmd = [
      "fcitx5"
      "waybar"
      "hyprpaper"
    ];
  };
}
