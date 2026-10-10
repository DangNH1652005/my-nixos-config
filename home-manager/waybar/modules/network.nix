{ config, pkgs, ... }:

{
  programs.waybar.settings.mainBar.network = {
    format-wifi = "";
    format-ethernet = "󰈀";
    format-disconnected = "󰖪";

    tooltip-format = "{ifname}: {ipaddr}";
  };
}
