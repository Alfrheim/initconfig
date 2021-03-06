
{ config, pkgs, ... }:

let
  terminus-td1 = pkgs.stdenv.lib.overrideDerivation pkgs.terminus_font (oldAttrs : {
    configurePhase = ''
      patch < alt/td1.diff
    '' + oldAttrs.configurePhase;
  });
in
{
  fonts = {
    fonts = with pkgs; [
      anonymousPro
      emacs-all-the-icons-fonts
      source-code-pro
      fira-code
      fira-code-symbol
      terminus-td1
      twemoji-color-font
      google-fonts
      noto-fonts-emoji
      symbola
      nerdfonts
    ];
  };
}
