{ config, pkgs, ... }:

{
  users.users.admin = {
    name = "admin";
    # hashedPassword = "$6$JuZni5Aqesp.z5yj$KUO2eAgrma2FXDWWIBqGfOSLf65twcIj4SHFiv7MIGRcaHQxx1nZ.vXmyE5MKq0WS7OwyfdEr8D0URhDt161A/";
    # initialPassword = "thisPasswordIsPublicButDontPublish";
    initialPassword = "1234";
    isNormalUser = true;
    extraGroups = [ "wheel" ];
    openssh.authorizedKeys.keys = [ "ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAIJcDIsto/6GS7XwTl+uVo4ABeRlRjDwAU0HHy8irqLaB hhefesto@olimpo" ];
  };
  security.sudo.wheelNeedsPassword = false;
  nix.settings.trusted-users = [ "@wheel" ]; # https://github.com/serokell/deploy-rs/issues/25
}
