
{ config, pkgs, ... }:

{
  environment.systemPackages = with pkgs; [
    alacritty
  ];

  home-manager.sharedModules = [
    {
      xdg.configFile."alacritty/alacritty.toml" = {
        source = ./alacritty.toml;
      };
    }
  ];
}
