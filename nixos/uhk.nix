
{ config, pkgs, ... }:

{

  environment.systemPackages = with pkgs; [
    appimage-run
    ];
  services.udev = {
    extraRules = ''
SUBSYSTEM=="input", GROUP="input", MODE="0666"
SUBSYSTEMS=="usb", ATTRS{idVendor}=="1d50", ATTRS{idProduct}=="612[0-7]", MODE:="0666", GROUP="plugdev"
KERNEL=="hidraw*", ATTRS{idVendor}=="1d50", ATTRS{idProduct}=="612[0-7]", MODE="0666", GROUP="plugdev"
    '';
  };

}
