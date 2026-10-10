{ config, pkgs, ... }:

{
  imports = [
    ./modules/settings.nix
    ./modules/colors.nix
    ./modules/font.nix
  ];

  programs.kitty = {
    enable = true;
  };
}
