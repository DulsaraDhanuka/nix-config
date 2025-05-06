{ config, pkgs, ... }:

{
  environment.systemPackages = with pkgs; [
    picom
  ];
  
  home-manager.sharedModules = [
    {
      xdg.configFile."picom/config" = {
        source = ./config;
      };
    }
  ];
}
