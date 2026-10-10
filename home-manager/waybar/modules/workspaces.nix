{ config, pkgs, ... }:

{
  programs.waybar.settings.mainBar."hyprland/workspaces" = {
    disable-scroll = true;
    all-outputs = false;

    format = "{icon}";

    format-icons = {
      "1" = "";
      "2" = "";
      "3" = "";
      "4" = "";
      "5" = "";
      "6" = "";
      "7" = "";
      "8" = "";
      "9" = "󰒃";
      "10" = "󰣇";

      urgent = "";
      active = "";
      default = "";
    };
  };
}
