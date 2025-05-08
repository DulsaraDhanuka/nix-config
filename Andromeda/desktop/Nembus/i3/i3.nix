{ config, pkgs, ... }:

{
  environment.systemPackages = with pkgs; [
    dex
    xss-lock
    networkmanagerapplet
    i3-resurrect
    nitrogen
  ];

  services.xserver.enable = true;
  services.xserver.windowManager.i3.enable = true;
  services.xserver.windowManager.i3.configFile = ./config;
  services.xserver.desktopManager.wallpaper.combineScreens = false;
  services.xserver.desktopManager.wallpaper.mode = "fill";
}
