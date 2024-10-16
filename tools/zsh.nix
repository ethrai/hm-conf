{
  programs.starship = {
    enable = true;
  };
  programs.zsh = {
    enable = true;
    enableCompletion = true;
    syntaxHighlighting.enable = true;
    autosuggestion.enable = true;
    initExtra = ''
      export XDG_DATA_DIRS=$HOME/.nix-profile/share:$XDG_DATA_DIRS
    '';
    defaultKeymap = "emacs";
    dotDir = ".config/zsh";
    history = {
      ignoreSpace = true;
      share = true;
    };
    historySubstringSearch = {
      enable = true;
    };

    shellAliases = {
      l = "eza -l";
      cd = "z";
      d = "docker";
      g = "git";
      v = "nvim";
      t = "tmux";
      hm = "home-manager";
    };

    oh-my-zsh = {
      enable = true;
      plugins = [
        "git"
        "history"
      ];
    };
  };
}
