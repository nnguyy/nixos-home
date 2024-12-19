{ config, lib, pkgs, ... }:
{
  wayland.windowManager.hyprland = {
    enable = true;
    package = pkgs.hyprland;

    settings = {
      "$terminal" =  "alacritty";
      "$mod" = "SUPER";
      "$menu" = "wofi --show drun";


      monitor = [",1920x1080@180,auto,1"];

      general = {
        gaps_in = 5;
	gaps_out = 5;
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
	shadow {
	  enabled = true;
	  range = 4;
	  render_power = 3;
	  color = "rgba(1a1a1aee)"
	};
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
        "$mod, return, exec, $terminal"
	"$mod, q, killactive"
	"$mod, m, exit"
	"$mod, e, exec, $fileManager"
	"$mod, v, togglefloating"
	"$mod, r, exec, $menu"
	"$mod, p, pseudo"
	"$mod, j, togglesplit"
	
	"$mod, i, movefocus, l"
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
      ];

      windowrulev2 = [
      "suppressevent maximize, class:.*"
      "nofocus,class:^$,title:^$,xwayland:1,floating:1,fullscreen:0,pinned:0"
      ];
    };
  };
}
