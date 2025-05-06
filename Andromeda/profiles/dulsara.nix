
{ config, pkgs, ... }:

{
  users.users.dulsara = {
    isNormalUser = true;
    extraGroups = [ "wheel" ]; # Enable ‘sudo’ for the user.
  };

  home-manager.users.dulsara = { pkgs, ... }: {
    home.packages = [ pkgs.hello ];
    home.stateVersion = "24.11";
  };
}
