{ pkgs, ... }:

{
  imports = [
    ./programs
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

  home.sessionPath = [
    "$HOME/go/bin"
  ];

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
    '';
  };
}
