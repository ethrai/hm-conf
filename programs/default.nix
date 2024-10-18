{ pkgs, ... }:
{
  imports = [
    ./alacritty

    ./shell.nix
    ./zellij.nix
    ./direnv.nix
    ./git.nix
  ];

  home.packages = with pkgs; [
    jq
    ripgrep
    fd
    curl
    wget
    httpie
    lazygit
    zip
    unzip

    kubectl
    kubernetes
    kind
    kustomize
    pgcli

    nasm
    # golang, could be in dev template
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
