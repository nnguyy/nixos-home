{ lib, pkgs, ... }:
{
  home = {
    packages = with pkgs; [
      hello
    ];
    username = "nnguy";
    homeDirectory = "/home/nnguy";

    stateVersion = "23.11";
    };
}
