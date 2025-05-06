{ config, pkgs, ... }:

{
  environment.systemPackages = with pkgs; [
    i3-resurrect
  ];

  services.xserver.enable = true;
  services.xserver.xautolock.time = 9999999;
  services.xserver.windowManager.i3.enable = true;
  services.xserver.windowManager.i3.configFile = ./config;
}
