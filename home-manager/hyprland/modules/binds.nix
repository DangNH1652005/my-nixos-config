{ config, pkgs, ... }:
{
  wayland.windowManager.hyprland.settings = {
    "mod" = "SUPER";
    bind = [
      # ========================================
      # Window / Application
      # ========================================

      "mod, D, fullscreen, 1"
      "mod, T, exec, kitty"
      "mod, Q, killactive"
      "mod, M, exec, command -v hyprshutdown >/dev/null 2>&1 && hyprshutdown || hyprctl dispatch exit"
      "mod, V, togglefloating"
      "mod, P, pseudo"
      "mod, J, togglesplit"
      "mod, A, exec, ~/.config/rofi/launchers/type-2/launcher.sh || pkill rofi"


      # ========================================
      # Focus
      # ========================================

      "mod, left, movefocus, l"
      "mod, right, movefocus, r"
      "mod, up, movefocus, u"
      "mod, down, movefocus, d"


      # ========================================
      # Special workspace
      # ========================================

      "mod, S, togglespecialworkspace, magic"
      "mod SHIFT, S, movetoworkspace, special:magic"


      # ========================================
      # Workspace scrolling
      # ========================================

      "mod, mouse_down, workspace, e+1"
      "mod, mouse_up, workspace, e-1"


      # ========================================
      # Audio
      # ========================================

      ", XF86AudioRaiseVolume, exec, wpctl set-volume -l 1 @DEFAULT_AUDIO_SINK@ 5%+"
      ", XF86AudioLowerVolume, exec, wpctl set-volume @DEFAULT_AUDIO_SINK@ 5%-"
      ", XF86AudioMute, exec, wpctl set-mute @DEFAULT_AUDIO_SINK@ toggle"
      ", XF86AudioMicMute, exec, wpctl set-mute @DEFAULT_AUDIO_SOURCE@ toggle"


      # ========================================
      # Brightness
      # ========================================

      ", XF86MonBrightnessUp, exec, brightnessctl -e4 -n2 set 5%+"
      ", XF86MonBrightnessDown, exec, brightnessctl -e4 -n2 set 5%-"


      # ========================================
      # Media
      # ========================================

      ", XF86AudioNext, exec, playerctl next"
      ", XF86AudioPause, exec, playerctl play-pause"
      ", XF86AudioPlay, exec, playerctl play-pause"
      ", XF86AudioPrev, exec, playerctl previous"
    ]

    # ========================================
    # Workspaces 1-10
    # ========================================

    ++ (
      builtins.concatLists (
        builtins.genList
          (i:
            let
              ws = i + 1;
              key = if ws == 10 then "0" else toString ws;
            in
            [
              "mod, ${key}, workspace, ${toString ws}"
              "mod SHIFT, ${key}, movetoworkspace, ${toString ws}"
            ]
          )
          10
      )
    );


    # ========================================
    # Mouse bindings
    # ========================================

    bindm = [
      "mod, mouse:272, movewindow"
      "mod, mouse:273, resizewindow"
    ];
  };
}

