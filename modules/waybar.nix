{ config, lib, pkgs, ... }:
{
  programs.waybar = {
    enable = true;
    package = pkgs.waybar;

    settings = [{
        layer = "top";
	position = "top";
	height = 30;
	output = [
	  "eDP-1"
	];
	modules-left = [ "hyprland/workspaces" "hyprland/mode" ];
	modules-center = [ "hyprland/window" ];
	modules-right = [ "battery" "clock" ];

	"hyprland/window" = {
	format = "{}";
	max-length = 50;
	};

	"battery" = {
	"format" = "{capacity}$";
	};

	"clock" = {
	format = "{:%a %d. %b  %I:%M %p}";
	};
    }];

    style = ''
    * {
      border: none;
      border-radius: 0;
      padding: 0;
      margin: 0;
      font-size: 11px;
    }

    window#waybar {
      background: #292828;
      color: #ffffff;
    }

    #battery {
      margin-left: 7px;
      margin-right: 3px;
    }
    '';
  };
}

