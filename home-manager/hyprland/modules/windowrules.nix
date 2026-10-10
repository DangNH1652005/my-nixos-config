{ config, pkgs, ... }:

{
  wayland.windowManager.hyprland.settings = {
    windowrule = [
      "match:class ^$, suppress_event maximize"
      "match:class ^$, match:title ^$, match:xwayland true, match:float true, match:fullscreen false, match:pin false, no_focus true"
      "match:class hyprland-run, move 20 monitor_h-120, float true"
    ];
  };
}
