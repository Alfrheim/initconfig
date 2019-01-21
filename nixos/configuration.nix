# Edit this configuration file to define what should be installed on
# your system.  Help is available in the configuration.nix(5) man page
# and in the NixOS manual (accessible by running ‘nixos-help’).

{ config, pkgs, ... }:

{
  imports =
    [ # Include the results of the hardware scan.
      ./hardware-configuration.nix
./apps.nix
./networking.nix
./web-browsers.nix
./development.nix
./system.nix
./i3.nix
./docker.nix
./editors.nix
./console.nix
./uhk.nix
    ];

  # Use the GRUB 2 boot loader.
  boot.loader.grub.enable = true;
  boot.loader.grub.version = 2;
  # boot.loader.grub.efiSupport = true;
  # boot.loader.grub.efiInstallAsRemovable = true;
  # boot.loader.efi.efiSysMountPoint = "/boot/efi";
  # Define on which hard drive you want to install Grub.
  boot.loader.grub.device = "/dev/sda"; # or "nodev" for efi only

  #networking.hostName = "freyja"; # Define your hostname.
  #networking.wireless.enable = true;  # Enables wireless support via wpa_supplicant.

  # Configure network proxy if necessary
  # networking.proxy.default = "http://user:password@proxy:port/";
  # networking.proxy.noProxy = "127.0.0.1,localhost,internal.domain";

  # Select internationalisation properties.
  # i18n = {
  #   consoleFont = "Lat2-Terminus16";
  #   consoleKeyMap = "us";
  #   defaultLocale = "en_US.UTF-8";
  # };

  # Set your time zone.
  time.timeZone = "Europe/Andorra";

  # List packages installed in system profile. To search, run:
  # $ nix search wget
  environment.systemPackages = with pkgs; [
    wget vim htop gcc gnumake binutils imagemagick git 
  ];

  # Some programs need SUID wrappers, can be configured further or are
  # started in user sessions.
  # programs.mtr.enable = true;
  # programs.gnupg.agent = { enable = true; enableSSHSupport = true; };

  # List services that you want to enable:

  # Enable the OpenSSH daemon.
  # services.openssh.enable = true;

  # Open ports in the firewall.
  # networking.firewall.allowedTCPPorts = [ ... ];
  # networking.firewall.allowedUDPPorts = [ ... ];
  # Or disable the firewall altogether.
  # networking.firewall.enable = false;

  # Enable CUPS to print documents.
  services.printing.enable = true;

  # Enable sound.
  sound.enable = true;
  hardware.pulseaudio = {
    enable = true;
    package = pkgs.pulseaudioFull;
  };

  hardware.bluetooth.enable = true;

  # Enable the X11 windowing system.
  services.xserver = {
	  enable = true;
exportConfiguration = true;
resolutions = [
{ x = 3440; y = 1440; }
{ x = 2560; y = 1440; }
{ x = 1920; y = 1200; }
{ x = 1920; y = 1080; }
];
monitorSection = ''
ModelName "DELL U3417W"
Option "DPMS"
HorizSync       30.0 - 89.0
VertRefresh     48.0 - 85.0
'';

screenSection = ''
DefaultDepth 24
'';

displayManager.sddm.enable = true;
videoDrivers = [ "nvidia"  ];
	  layout = "us";
# Enable touchpad support.
	  libinput.enable = true;
  };
#hardware.nvidia.modesetting.enable = true;
hardware.nvidia.optimus_prime = {
enable = true;
nvidiaBusId = "PCI:1:00:0";
intelBusId = "PCI:0:02:0";
};
  # services.xserver.xkbOptions = "eurosign:e";


  # Enable the KDE Desktop Environment.
  # services.xserver.displayManager.sddm.enable = true;
  # services.xserver.desktopManager.plasma5.enable = true;

  # Define a user account. Don't forget to set a password with ‘passwd’.
  users.users.alfrheim = {
    isNormalUser = true;
    uid = 1000;
    group = "users";
    extraGroups = [
	    "networkmanager" "video" "audio" "wheel" "plugdev"
    ];
    home = "/home/alfrheim";
    createHome = true;
    packages = with pkgs; [stow];
  };

 # security.sudo.configFile = "%wheel ALL=(ALL) ALL";
  nixpkgs.config.allowUnfree = true;

  # This value determines the NixOS release with which your system is to be
  # compatible, in order to avoid breaking some software such as database
  # servers. You should change this only after NixOS release notes say you
  # should.
  system.stateVersion = "18.09"; # Did you read the comment?

}
