{
  programs.fish = {
    enable = true;
    shellAliases = {
      g = "git";
      l = "eza -la";
      d = "docker";
      m = "make";
      v = "nvim";
      c = "code";
      hm = "home-manager";
    };
  };
}
