{ config, pkgs, ... }:

{
  environment.systemPackages = with pkgs; [
google-chrome
opera
    firefox
    qutebrowser
  ];
}
