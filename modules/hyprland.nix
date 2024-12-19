{ config, lib, pkgs, ... }:
{
  wayland.windowManager.hyprland = {
    enable = true;
    package = pkgs.hyprland;

    settings = {
      "$terminal" =  "alacritty";
      "$mod" = "SUPER";

      monitor = [",1920x1080@180,auto,1"];

      general = {
        gaps_in = 6;
	gaps_out = 6;
	border_size = 2;
	layout = "dwindle";
	allowing_tearing = true;
      };

      input = {
        kb_layout = "us";
	follow_mouse = true;
	touchpad = {
	  natural_scroll = true;
	};
	accel_profile = "flat";
	sensitiviy = 0;
      };

      decoration = {
        rounding = 15;
	active_opacity = 0.9;
	inactive_opacity = 0.8;
	fullscreen_opacity = ,1;
	blur = {
	  enabled = true;
	  size = 14;
	  passes = 4;
	  brightness = 1;
	  noise = 0.01;
	};
	drop_shadow = true
      };

      animations = {
        enabled = true;
	bezier = [
	  "linear, 0, 0, 1, 1"
	  "md3_standard, 0.2, 0, 0, 1"
	];
      };
      
      cursor = {
        enabled_hyprcursor = true;
      };

      dwindle = {
        pseudotile = true;
      };

      misc = {
        disable_hyprland_logo = true;
	disable_splash_rendering = true;
      };

      bind = [
        "$mod, return, exec, $terminal"
	"$mod, q, killactive"
      ];
    };
  };
}
