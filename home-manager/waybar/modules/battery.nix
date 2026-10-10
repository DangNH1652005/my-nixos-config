{ config, pkgs, ... }:

{
  programs.waybar.settings.mainBar.battery = {
    states = {
      warning = 30;
      critical = 15;
    };

    format = "{icon} {capacity}%";
    format-charging = "󰂄 {capacity}%";

    format-icons = [
      "󰁺"
      "󰁻"
      "󰁼"
      "󰁽"
      "󰁾"
      "󰁿"
      "󰂀"
      "󰂁"
      "󰂂"
      "󰁹"
    ];

    tooltip-format = "{capacity}%";
  };
}
