{ config, pkgs, ... }:

{
  environment.systemPackages = with pkgs; [
    kdePackages.dolphin
    kdePackages.qtsvg
    kdePackages.kio-fuse
    kdePackages.kio-extras
    kdePackages.kdegraphics-thumbnailers
    kdePackages.kimageformats
    resvg
    kdePackages.kdesdk-thumbnailers
    kdePackages.ffmpegthumbs
    kdePackages.taglib
    icoutils
    libappimage
  ];
}
