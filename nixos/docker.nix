
{ config, pkgs, ... }:

{
  virtualisation.docker.enable = true;
  environment.systemPackages = with pkgs; [
    # docker docker_compose
  ];
  users.users.alfrheim.extraGroups = [ "docker"];
}
