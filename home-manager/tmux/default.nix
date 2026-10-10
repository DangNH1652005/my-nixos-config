{ config, pkgs, ... }:

{
  programs.tmux = {
    enable = true;
    clock24 = true;
    mouse = true;
 
    historyLimit = 5000;
    package = pkgs.tmux;
    baseIndex = 1;
    escapeTime = 0;

    shortcut = "b";
   
    extraConfig = ''
      # Window
      bind c new-window
      bind , command-prompt -I "#W" "rename-window '%%'"
      bind n next-window
      bind p previous-window
      bind w choose-tree -Zw

      # Pane
      set -g pane-base-index 1
      bind | split-window -h
      bind - split-window -v

      # Automatically renumber windows
      set -g renumber-windows on

      # Status bar
      set -g status-right '%H:%M %d-%m-%Y'

    '';


  };
}
