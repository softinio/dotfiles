{ config, pkgs, ... }:

{
  # List packages installed in system profile. To search by name, run:
  # $ nix-env -qaP | grep wget
  environment.systemPackages =
    [ pkgs.lua
      #( pkgs.lua.withPackages (ps: with ps; [ luarocks mpack ]) )
      ( pkgs.python37.withPackages (ps: with ps; [ pip pynvim ]) )
       pkgs.neovim
      pkgs.zsh
      pkgs.git
      pkgs.pgcli
      pkgs.tig
      pkgs.fzf
      pkgs.bat
      pkgs.ripgrep
      pkgs.go
      pkgs.jq
      pkgs.httpie
      pkgs.global
      pkgs.fd
      pkgs.tree
      pkgs.antibody
      pkgs.exa
      pkgs.curlFull
      pkgs.wget
      pkgs.openssl
      pkgs.readline
      pkgs.taglib
      pkgs.libxml2
      pkgs.libxslt
      pkgs.libzip
      pkgs.zlib
      pkgs.nodejs-12_x
      pkgs.gitAndTools.hub
      pkgs.sbt
      pkgs.scala
      pkgs.coreutils
      pkgs.tmux
      pkgs.universal-ctags
      pkgs.jansson
      pkgs.rustup
      pkgs.ripgrep
      pkgs.lazygit
      pkgs.yarn
    ];

  # Use a custom configuration.nix location.
  # $ darwin-rebuild switch -I darwin-config=$HOME/.config/nixpkgs/darwin/configuration.nix
  # environment.darwinConfig = "$HOME/.config/nixpkgs/darwin/configuration.nix";

  # Auto upgrade nix package and the daemon service.
  # services.nix-daemon.enable = true;
  # nix.package = pkgs.nix;

  # Create /etc/bashrc that loads the nix-darwin environment.
  # programs.bash.enable = true;
  programs.zsh.enable = true;
  # programs.fish.enable = true;

  # Used for backwards compatibility, please read the changelog before changing.
  # $ darwin-rebuild changelog
  system.stateVersion = 3;

  # You should generally set this to the total number of logical cores in your system.
  # $ sysctl -n hw.ncpu
  nix.maxJobs = 8;
  nix.buildCores = 1;
}
