{ config, pkgs, ... }:

{
  virtualisation.vmware.guest.enable = true;

  system.fsPackages = [ pkgs.open-vm-tools ];
  fileSystems."/mnt/hgfs" = {
    fsType = "fuse./run/current-system/sw/bin/vmhgfs-fuse";
    device = ".host:/";
    options = [
      "allow_other"
      "auto_unmount"
      "uid=1000"
      "gid=100"
      "defaults"
    ];
  };
}
