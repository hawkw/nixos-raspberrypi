{
  config,
  lib,
  pkgs,
  ...
}: let
  cfg = config.raspberry-pi.hardware.audio;
in {
  options.raspberry-pi.hardware.audio = {
    enable = lib.mkEnableOption ''
      Enable the default audio output of the Raspberry Pi.
    '';
  };
  config = lib.mkIf cfg.enable {
    boot.kernelParams = ["snd_bcm2835.enable_hdmi=1"];
  };
}
