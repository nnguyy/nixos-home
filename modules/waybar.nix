{ config, lib, ... }:
{
  programs.waybar = {
    enable = true;

    settings = [
    {
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

      "battery" = {
        "format" = "{capacity}$";
      };

      "clock" = {
        format = "{:%a %d. %b  %I:%M %p}";
      };
        "timezone" = "America/New_York";
    };
    ];
}
