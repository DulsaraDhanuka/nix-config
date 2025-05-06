{ config, pkgs, ... }:

{
  environment.systemPackages = with pkgs; [
    polybar
  ];
  
  home-manager.sharedModules = [
    {
      xdg.configFile."polybar/config.ini" = {
        source = ./config.ini;
      };

      xdg.configFile."polybar/scripts/toggle-monitor-setup.sh" = {
        source = ./scripts/toggle-monitor-setup.sh;
      };
    }
  ];
}
