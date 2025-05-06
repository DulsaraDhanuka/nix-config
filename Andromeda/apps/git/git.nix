{ config, pkgs, ... }:

{
  environment.systemPackages = with pkgs; [
    git
  ];

  programs.git.enable = true;
  
  home-manager.sharedModules = [
    {
      home.file.".gitconfig" = {
        source = ./.gitconfig;
      };

      home.file.".git-credentials" = {
        source = ./.git-credentials;
      };
    }
  ];
}
