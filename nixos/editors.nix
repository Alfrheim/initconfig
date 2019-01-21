
{ config, pkgs, ... }:

{

 # services.emacs.enable = true;
#  services.emacs.package = import /home/alfrheim/.emacs.d {pkgs = pkgs; };
  environment.systemPackages = with pkgs; [
    (pkgs.vim_configurable.customize {
      name = "vim";
      vimrcConfig.packages.myplugins = with pkgs.vimPlugins; {
        start = [ vim-nix ]; # load plugin on startup
      };
    })
    emacs
  ];
}
