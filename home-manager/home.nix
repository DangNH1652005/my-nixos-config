{ config, pkgs, ... }:

{
  home.username = "yamabuki";
  home.homeDirectory = "/home/yamabuki";

  home.stateVersion = "26.05";
   
  imports = [
    ./hyprland
    ./kitty
    ./rofi
    ./hyprpaper
    ./waybar
    ./zsh
    ./cursor
    ./tmux
    ./git
    ./nvim
  ];

  home.packages = with pkgs; [
    unzip

    python3
    pyright
    black

    go
    gopls
    gotools
    golangci-lint

    yazi
    pciutils
    
    kdePackages.dolphin
    # Screenshot
    grim
    slurp
    wl-clipboard

    # Terminal / CLI
    kitty
    tree
    fuzzel
    bat
    fastfetch
    ripgrep
    htop
    btop

    # Development
    nodejs_24
    gcc
    cmake
    lua
    typescript
    maven
    gradle

    # Language servers
    lua-language-server
    jdt-language-server
    angular-language-server
    typescript-language-server
    vscode-langservers-extracted
    prettierd

    # IDE / GUI applications
    google-chrome
    vscode
    jetbrains.idea
    jetbrains.webstorm
    dbeaver-bin
    postman

    # Java
    jdk25
  ];

  programs.lazydocker = {
    enable = true;

    settings = {
      commandTemplates.dockerCompose = "docker compose";
    };
  };

  programs.git = {
    enable = true;
  };

  programs.ssh = {
    enable = true;
  };
  
  programs.home-manager.enable = true;
}
