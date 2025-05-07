{ config, pkgs, ... }:

{
  environment.systemPackages = with pkgs; [
    dex
    xss-lock
    networkmanagerapplet
    i3-resurrect
  ];

  services.xserver.enable = true;
  services.xserver.windowManager.i3.enable = true;
  services.xserver.windowManager.i3.configFile = ./config;
}
