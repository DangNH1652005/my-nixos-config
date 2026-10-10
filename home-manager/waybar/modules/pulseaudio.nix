{ config, pkgs, ... }:

{
  programs.waybar.settings.mainBar.pulseaudio = {
    format = "{icon} {volume}%";
    format-muted = "󰝟 muted";

    format-icons = {
      default = [
        ""
        ""
        ""
      ];
    };

    on-click = "pavucontrol";
    tooltip-format = "{volume}%";
  };
}
