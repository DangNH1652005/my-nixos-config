{ config, pkgs, ... }:
{
  wayland.windowManager.hyprland = {
    enable = true;

    extraConfig = builtins.readFile ./config/hypr/hyprland.lua;
  };

  xdg.configFile."hypr/modules".source = ./config/hypr/modules;
}

# { config, pkgs, ... }:
#
# {
#   imports = [
#       ./modules/binds.nix
#       ./modules/animations.nix
#       ./modules/autostart.nix
#       ./modules/decorations.nix
#       ./modules/env.nix
#       ./modules/input.nix
#       ./modules/layout.nix
#       ./modules/misc.nix
#       ./modules/monitors.nix
#   ];
#
#   wayland.windowManager.hyprland = {
#     enable = true;
#     settings = {
#     };
#   };
# }
