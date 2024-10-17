{ pkgs, ... }:

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

  home.stateVersion = "24.05";

  home.packages = with pkgs; [
    neovim
    nil
    nixfmt-rfc-style
    typescript
  ];

  home.sessionVariables = {
    EDITOR = "code";
    GOROOT = "${pkgs.go}/share/go";
  };

  home.sessionPath = [ ];

  programs.home-manager.enable = true;

  services.xremap = {
    withGnome = true;
    yamlConfig = ''
      modmap:
        - name: Official # Optional
          remap: # Required
            capslock:
              held: leftctrl # Required, also accepts arrays
              alone: esc # Required, also accepts arrays
            shift_l:
              press: { launch: ["setxkbmap", "us"] } # Required
              release: { launch: ["setxkbmap", "us"] } # Required

            shift_r:
              press: { launch: ["setxkbmap", "ru"] } # Required
              release: { launch: ["setxkbmap", "ru"] } # Required
    '';
  };
}
