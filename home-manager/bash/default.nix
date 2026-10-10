{ config, pkgs, ... }:

{
  programs.bash = {
    enable = true;
    initExtra = ''
      bind '"\e[A": history-search-backward'
      bind '"\e[B": history-search-forward'
    '';
  };

  programs.starship = {
    enable = true;
    enableBashIntegration = true;

    settings = {
      add_newline = true;

      format = ''
        $os$username$hostname$directory$git_branch$git_status$cmd_duration
        $character
      '';

      palette = "sakura";

      palettes.sakura = {
        pink = "#F5A9C8";
        hot_pink = "#E879A9";
        purple = "#C8A2C8";
        cyan = "#9AD9E8";
        green = "#A8D5BA";
        yellow = "#F4D58D";
        red = "#E88388";
        white = "#F8F8F2";
        gray = "#888888";
      };

      os = {
        disabled = false;
        style = "pink";
        format = "[$symbol]($style) ";
      };

      os.symbols = {
        NixOS = "";
      };

      username = {
        show_always = true;
        style_user = "bold pink";
        style_root = "bold red";
        format = "[$user]($style)";
      };

      hostname = {
        ssh_only = false;
        style = "bold purple";
        format = "[@$hostname]($style) ";
      };

      directory = {
        style = "bold cyan";
        format = "[$path]($style) ";
        truncation_length = 3;
        truncate_to_repo = false;
        home_symbol = "~";
      };

      git_branch = {
        symbol = "󰊢 ";
        style = "bold purple";
        format = "[$symbol$branch]($style) ";
      };

      git_status = {
        style = "bold yellow";
        format = "[$all_status$ahead_behind]($style) ";
      };

      cmd_duration = {
        min_time = 2000;
        style = "gray";
        format = "[󱎫 $duration]($style) ";
      };

      character = {
        success_symbol = "[╰─❯](bold pink)";
        error_symbol = "[╰─❯](bold red)";
      };
    };
  };

  home.packages = with pkgs; [
    eza
    starship
    meslo-lgs-nf
  ];
}
