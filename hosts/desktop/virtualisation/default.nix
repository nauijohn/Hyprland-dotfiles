{ config, pkgs, user, ... }:

{
  virtualisation = {
    docker.enable = true;
  };

  users.groups.docker.members = [ "anthony" ];

  environment.systemPackages = with pkgs; [
    docker-compose
  ];
}
