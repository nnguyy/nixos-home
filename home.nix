{ lib, pkgs, ... }:
{
  home = {
    packages = with pkgs; [
      hello
      cowsay
      lolcat
    ];
    username = "nnguy";
    homeDirectory = "/home/nnguy";

    stateVersion = "23.11";

    file = {
      "hello.txt".text = "Hello, world!";
    };
  };
}
