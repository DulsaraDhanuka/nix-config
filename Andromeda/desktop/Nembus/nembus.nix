
{ config, pkgs, ... }:

{
  home-manager.sharedModules = [
    {
      xdg.enable = true;
    }
  ];

  imports =
    [
      ./i3/i3.nix
      ./polybar/polybar.nix
      ./xborders/xborders.nix
      ./picom/picom.nix
      ./feh.nix
    ];
}
