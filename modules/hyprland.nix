{ config, lib, pkgs, ... }:
{
  wayland.windowManager.hyprland = {
    enable = true;
    package = pkgs.hyprland;

    settings = {
      "$terminal" =  "alacritty";
      "$mod" = "SUPER";
      "$menu" = "wofi --show drun";

      env = [
        "XCURSOR_SIZE,24"
	"WLR_NO_HARDWARE_CURSORS,1"
      ];

      exec-once = [
        "$terminal"
	"waybar"
      ];


      monitor = [",1920x1080@180,auto,1"];

      general = {
        gaps_in = 3;
	gaps_out = 0;
	border_size = 2;
	resize_on_border = true;
	layout = "dwindle";
      };

      input = {
        kb_layout = "us";
	follow_mouse = true;
	sensitivity = 0;
	touchpad = {
	  natural_scroll = true;
	};
	accel_profile = "flat";
      };

      decoration = {
        rounding = 3;
	active_opacity = 0.9;
	inactive_opacity = 0.8;
	fullscreen_opacity = 1;
	drop_shadow = true;
	shadow_range = 4;
	shadow_render_power = 3;
	blur = {
	  enabled = true;
	  size = 3;
	  passes = 1;
	  vibrancy = 0.1696;
	};
      };

      animations = {
        enabled = true;
	bezier = [
	  "linear, 0, 0, 1, 1"
	  "md3_standard, 0.2, 0, 0, 1"
	];
      };
      
      dwindle = {
        pseudotile = true;
	preserve_split = true;
      };

      gestures = {
        workspace_swipe = true;
      };

      misc = {
        disable_hyprland_logo = true;
	disable_splash_rendering = true;
      };

      bind = [
        "$mod, f, fullscreen"
        "$mod, return, exec, $terminal"
	"$mod, w, killactive"
	"$mod, m, exit"
	"$mod, s, exec, $fileManager"
	"$mod, z, togglefloating"
	"$mod, a, exec, $menu"
	"$mod, c, pseudo"
	"$mod, x, togglesplit"
	
	"$mod, j, movefocus, l"
	"$mod, l, movefocus, r"
	"$mod, i, movefocus, u"
	"$mod, k, movefocus, d"

	"$mod, 1, workspace, 1"
	"$mod, 2, workspace, 2"
	"$mod, 3, workspace, 3"
	"$mod, 4, workspace, 4"
	"$mod, 5, workspace, 5"
	"$mod, 6, workspace, 6"
	"$mod, 7, workspace, 7"
	"$mod, 8, workspace, 8"
	"$mod, 9, workspace, 9"
	"$mod, 0, workspace, 10"

	"$mod SHIFT, 1, movetoworkspace, 1"
	"$mod SHIFT, 2, movetoworkspace, 2"
	"$mod SHIFT, 3, movetoworkspace, 3"
	"$mod SHIFT, 4, movetoworkspace, 4"
	"$mod SHIFT, 5, movetoworkspace, 5"
	"$mod SHIFT, 6, movetoworkspace, 6"
	"$mod SHIFT, 7, movetoworkspace, 7"
	"$mod SHIFT, 8, movetoworkspace, 8"
	"$mod SHIFT, 9, movetoworkspace, 9"
	"$mod SHIFT, 0, movetoworkspace, 10"
      ];

      windowrulev2 = [
      "nofocus,class:^$,title:^$,xwayland:1,floating:1,fullscreen:0,pinned:0"
      ];
    };
  };
}
