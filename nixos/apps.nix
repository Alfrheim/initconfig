{ config, pkgs, ... }:

{
  environment.systemPackages = with pkgs; [
zathura
p7zip
unzip
dropbox
mplayer
direnv
openvpn
redshift
shutter
slack
enpass
blueman
yadm
spotify
  ];

}
