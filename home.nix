{ lib, pkgs, ... }:
{
  imports = [
    ./modules/hyprland.nix
    ./modules/waybar.nix	
  ];

  home = {
    packages = with pkgs; [
      cowsay
      lolcat
    ];
    username = "nnguy";
    homeDirectory = "/home/nnguy";

    stateVersion = "23.11";

    file = {
      "hello.txt" = {
        text = "echo 'Hello, world!'";
	executable = true;
      };
    };
  };
}
