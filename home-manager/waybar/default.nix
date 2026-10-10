{ config, pkgs, ... }:

{
  imports = [
    ./modules/bar.nix
    ./modules/workspaces.nix
    ./modules/window.nix
    ./modules/clock.nix
    ./modules/tray.nix
    ./modules/network.nix
    ./modules/pulseaudio.nix
    ./modules/battery.nix
    ./modules/style.nix
  ];

  programs.waybar = {
    enable = true;
  };
}
