{
  modulesPath,
  lib,
  ...
}: {
  imports = [
    ../generic-aarch64
  ];

  raspberry-pi.hardware.platform.type = lib.mkDefault "rpi4";
}
