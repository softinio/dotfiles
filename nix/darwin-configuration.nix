{ config, pkgs, ... }:

{
  # List packages installed in system profile. To search by name, run:
  # $ nix-env -qaP | grep wget
  environment.systemPackages =
    [ 
      ( pkgs.lua.withPackages (ps: with ps; [ luarocks mpack ]) )
      ( pkgs.python36.withPackages (ps: with ps; [ pip flake8 yapf black pynvim python-language-server.override { pylint = null; } ]) )
      pkgs.neovim
      pkgs.zsh
      pkgs.git
      pkgs.awscli
      pkgs.pgcli
      pkgs.tig
      pkgs.fzf
      pkgs.bat
      pkgs.ripgrep
      pkgs.go
      pkgs.hugo
      pkgs.ctags
      pkgs.jq
      pkgs.httpie
      pkgs.global
      pkgs.fd
      pkgs.curl
      pkgs.wget
      pkgs.tree
      pkgs.antibody
      pkgs.exa
      pkgs.htop
      pkgs.mosh
      pkgs.sbt
      pkgs.scala
      pkgs.scalafmt
      pkgs.coursier
      pkgs.ammonite
      pkgs.bloop
      pkgs.coreutils
      pkgs.yarn
      pkgs.openssl
      pkgs.xz
    ];

  # Use a custom configuration.nix location.
  # $ darwin-rebuild switch -I darwin-config=$HOME/.config/nixpkgs/darwin/configuration.nix
  # environment.darwinConfig = "$HOME/.config/nixpkgs/darwin/configuration.nix";

  # Auto upgrade nix package and the daemon service.
  services.nix-daemon.enable = true;
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
  nix.maxJobs = 2 ;
  nix.buildCores = 1;

  # Use sandbox
  # nix.useSandbox = true;
}
