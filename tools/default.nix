{ pkgs, ... }: {
  imports = [
    ./fd.nix
    ./bat.nix
    ./fzf.nix
    ./git.nix
    ./btop.nix
    ./yazi.nix
    ./eza.nix
    ./ytdlp.nix
    ./direnv.nix
    ./zellij.nix
    ./zoxide.nix
    ./fish.nix
  ];

  home.packages = with pkgs; [
    # fancy cli tools
    jq
    ripgrep
    fd
    curl
    wget
    httpie
    lazygit
    mdcat
    zip 
    unzip

    #
    
    
    # kubernetes
    kubectl
    kubernetes
    kind
    kustomize
    pgcli
    
    nasm
    # golang, could be in dev template (Flake)
    go
    gopls
    gotools
    reftools
    gomodifytags
    golangci-lint
    golangci-lint-langserver
    gotests
    impl
    gofumpt
    cobra-cli
    hey
    go-tools
    govulncheck
    golines
    iferr
    delve
    ginkgo
    gotestsum
    govulncheck
    go-migrate
    sqlite
    sqlite-utils
    # js
    nodejs
    # java
    spring-boot-cli
    gradle
    maven

  ];
}
