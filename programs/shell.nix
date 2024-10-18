{
  programs.zsh = {
    enable = true;
    enableCompletion = true;
    # defaults colors sucks
    syntaxHighlighting.enable = true;
    autosuggestion = {
      enable = true;
      strategy = [
        "history"
        "completion"
      ];
    };

    shellAliases = {
      l = "eza -lah";
      tree = "eza --tree";
      cd = "z";
      hm = "home-manager";
    };
    oh-my-zsh = {
      enable = true;
      plugins = [
        "git"
        "sudo"
      ];
      theme = "robbyrussell";
    };
  };

  programs.eza = {
    enable = true;
    icons = false;
    git = true;
    extraOptions = [
      "--group-directories-first"
      "-h"
    ];
    enableZshIntegration = true;
  };

  programs.zoxide = {
    enable = true;
    enableZshIntegration = true;
  };

  programs.fzf = {
    enable = true;
    enableZshIntegration = true;
  };

  programs.fd = {
    enable = true;
  };
}
