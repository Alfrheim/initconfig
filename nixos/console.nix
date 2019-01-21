
{ config, pkgs, ... }:

{
  programs.fish.enable = true;

  users.extraUsers.alfrheim = {
    shell = "/run/current-system/sw/bin/fish";
  };

  environment.systemPackages = with pkgs; [
    urxvt_perls
    urxvt_vtwheel
    urxvt_font_size
    rxvt_unicode
    autojump
    ranger
    jq
    tree
    neofetch
    w3m
    unrar
    unzip
    shellcheck
    atool
    exa
  ];
}
