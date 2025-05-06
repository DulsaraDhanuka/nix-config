{ config, pkgs, ... }:

let
  home-manager = builtins.fetchTarball { 
    url = "https://github.com/nix-community/home-manager/archive/release-24.11.tar.gz";
    sha256 = "sha256:0gjfa3bv0m0kymxqla9iih11gjb6czyj942v34pyc7xy4qsx898k";
  };
in
{
  imports =
    [
      (import "${home-manager}/nixos")
      ./base.nix
      ./vmware.nix
      ./desktop/desktop.nix
      ./profiles/dulsara.nix
      ./terminals/zsh/zsh.nix

      ./apps/rofi/rofi.nix
      ./apps/alacritty/alacritty.nix
      ./apps/dolphin/dolphin.nix
      ./apps/git/git.nix
      ./apps/google-chrome/google-chrome.nix
      ./apps/vscode/vscode.nix
      ./apps/binary-exploitation-tools/binary-exploitation-tools.nix
      ./apps/anki/anki.nix
    ];
}
