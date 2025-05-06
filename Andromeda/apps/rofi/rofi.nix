{ config, pkgs, ... }:

{
  environment.systemPackages = with pkgs; [
    rofi
  ];

  home-manager.sharedModules = [
    {
      xdg.configFile."rofi/themes/dulsara.rasi" = {
        source = ./dulsara.rasi;
      };
    }
  ];
}
