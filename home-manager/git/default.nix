{ config, pkgs, ... }:

{
  programs.git = {
    enable = true;
    userName = "DangNH1652005";
    userEmail = "nguyenhaidang1652005@gmail.com";
    
    extraConfig = {
      init.defaultBranch = "main";
      pull.rebase = false;
      push.autoSetupRemote = true;
    };

    aliases = {
      s = "status";
      co = "checkout";
      br = "branch";
      cm = "commit";
      lg = "log --oneline --graph --decorate";
    };
  };
}
