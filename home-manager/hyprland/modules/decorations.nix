{ config, pkgs, ... }:

{
  wayland.windowManager.hyprland.settings = {

    # ========================================
    # General
    # ========================================

    general = {
      gaps_in = 0;
      gaps_out = 0;

      border_size = 1;

      col = {
        active_border = "rgba(ffb7c5ff) rgba(ff69b4ff) 45deg";
        inactive_border = "rgba(831843aa)";
      };

      resize_on_border = true;

      allow_tearing = false;
    };


    # ========================================
    # Decoration
    # ========================================

    decoration = {
      rounding = 0;
      rounding_power = 0;

      active_opacity = 1.0;
      inactive_opacity = 0.9;

      shadow = {
        enabled = true;
        range = 7;
        render_power = 4;
        color = "0xff9eb5aa";
      };

      blur = {
        enabled = true;
        size = 3;
        passes = 1;
        vibrancy = 0.1696;
      };
    };


    # ========================================
    # Animations
    # ========================================

    animations = {
      enabled = true;
    };
  };
}

