{ config, pkgs, ... }:

{
  environment.systemPackages = with pkgs; [
    zsh-powerlevel10k
    meslo-lgs-nf
  ];

  programs.zsh = {
    enable = true;
    enableCompletion = true;
    autosuggestions.enable = true;
    syntaxHighlighting.enable = true;

    shellAliases = {
    };

    shellInit = ''
      source ${pkgs.zsh-powerlevel10k}/share/zsh-powerlevel10k/powerlevel10k.zsh-theme
    '';

    ohMyZsh = {
      enable = true;
      plugins = ["git"];
    };

    histSize = 10000; 
  };

  users.defaultUserShell = pkgs.zsh;
  system.userActivationScripts.zshrc = "touch .zshrc"; # to avoid being prompted to generate the config for first time
  environment.shells = [pkgs.zsh];

  home-manager.sharedModules = [
    {
      home.file.".p10k.zsh" = {
        source = ./.p10k.zsh;
      };
    }
  ];
}
