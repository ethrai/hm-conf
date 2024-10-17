# hm-conf

My home-manager configuration.

Applications:

Services:
- xremap

## Installation

1. Install nix package manager

``` bash
sh <(curl -L https://nixos.org/nix/install) --daemon
```

2. Add nixpkgs channel

``` bash
nix-channel --add https://nixos.org/channels/nixpkgs-unstable
nix-channel --update
```

3. Add home manager channel

``` bash
nix-channel --add https://github.com/nix-community/home-manager/archive/master.tar.gz home-manager
nix-channel --update
```

4. Install home-manager

``` bash
nix-shell '<home-manager>' -A install
```

5. Clone down this repo and run inside it

``` bash
home-manager --extra-experimental-features "nix-command flakes" --flake . switch
```