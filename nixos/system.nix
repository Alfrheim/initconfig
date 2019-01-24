{ config, pkgs, ... }:

{
  environment.systemPackages = with pkgs; [
pciutils
ntfs3g
xfce.gvfs
gvfs
  ];
}
