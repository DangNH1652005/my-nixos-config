{ config, pkgs, ... }:

{
  services.hyprpaper = {
    enable = true;

    settings = {
      wallpaper = {
        monitor = "";
        path =   "${config.home.homeDirectory}/Pictures/wallpapers/Fantasy-Lanscape-Night.png";
        fit_mode = "cover";
      };

      splash = false;
      ipc = true;
    };
  };
}
