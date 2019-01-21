{ config, pkgs, ... }:

{
  services.xserver.windowManager.i3 = {
    package = pkgs.i3-gaps;
    enable = true;
  };

  environment.systemPackages = with pkgs; [
    acpi
    arandr
    compton
    conky
    copyq
    dmenu
    dropbox-cli
    dunst
    feh
    gnomeExtensions.caffeine
    i3blocks
    i3lock-pixeled
    pasystray
    pavucontrol 
    rofi
    sysstat
    xfce.thunar
    xfce.thunar-volman
    xfce.thunar-archive-plugin
    xfce.thunar-dropbox-plugin
    xorg.xkill
    xorg.xbacklight
    ];
}
