{ config, lib, ... }:
{
  programs.waybar.enable = true;

  programs.waybar.settings = {
    mainBar = {
      layer = "top";
      position = "top";
      output = [
        "eDP-1"
      ];
    
      modules-left = [ "hyprland/workspaces" "hyprland/mode" ];
      modules-center = [ "hyprland/window" ];
      modules-right = [ "battery" "clock" ];

      "hyprland/window" = {
        max-length = 50;
      };

      "clock" = {
        format = "{:%a %d. %b  %I:%M %p}";
      };
      "timezone" = '"America/New_York"'
    };
  };
}
