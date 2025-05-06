{ config, pkgs, ... }:

{
  environment.systemPackages = with pkgs; [
    xborders
  ];
  
  home-manager.sharedModules = [
    {
      xdg.configFile."xborders/config" = {
        source = ./config;
      };
    }
  ];
}
