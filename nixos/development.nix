{ config, pkgs, ... }:

{
  environment.systemPackages = with pkgs; [
    openjdk openjdk10 jdk8 maven gradle jetbrains.idea-community charles
    remmina
  ];
}
