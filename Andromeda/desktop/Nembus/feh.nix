{ config, pkgs, ... }:

{
  environment.systemPackages = with pkgs; [
    feh
  ];

  home-manager.sharedModules = [
    {
      xdg.configFile."wallpapers" = {
        source = ../../../wallpapers;
        recursive = true;
      };
    }
  ];
}
