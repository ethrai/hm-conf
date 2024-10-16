{ config, pkgs, ... }:

{
  imports = [
    ./tools
  ];
  home.username = "sergio";
  home.homeDirectory = "/home/sergio";

  nix = {
    package = pkgs.nixFlakes;
    extraOptions = ''
      experimental-features = nix-command flakes
    '';
  };

  home.stateVersion = "24.05"; # Please read the comment before changing.

  home.packages = with pkgs; [
    neovim
    nil
    nixfmt-rfc-style
    typescript
  ];

  # Source if not using home-managers shell
  #  ~/.nix-profile/etc/profile.d/hm-session-vars.sh
  # or
  #  ~/.local/state/nix/profiles/profile/etc/profile.d/hm-session-vars.sh
  # or
  #  /etc/profiles/per-user/sergio/etc/profile.d/hm-session-vars.sh
  home.sessionVariables = {
    EDITOR = "code";
    GOROOT = "${pkgs.go}/share/go";
  };

  home.sessionPath = [ ];

  programs.home-manager.enable = true;

  services.xremap = {
    withGnome = true;
    config = {
      modmap = [
        {
          name = "default";
          remap = {
            capslock = {
              held = "leftctrl";
              alone = "esc";
            };
          };
        }
      ];
    };
  };
}
