{ config, pkgs, ... }:

{
  # Let Home Manager install and manage itself.
  programs.home-manager.enable = true;

  # This value determines the Home Manager release that your
  # configuration is compatible with. This helps avoid breakage
  # when a new Home Manager release introduces backwards
  # incompatible changes.
  #
  # You can update Home Manager without changing this value. See
  # the Home Manager release notes for a list of state version
  # changes in each release.
  home.stateVersion = "20.03";

  home.packages = [
    ( pkgs.python38.withPackages (ps: with ps; [ pip pynvim ]) )
    pkgs.htop
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
    pkgs.jansson
    pkgs.universal-ctags
    pkgs.jq
    pkgs.httpie
    pkgs.global
    pkgs.fd
    pkgs.curlFull
    pkgs.wget
    pkgs.readline
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
    pkgs.gitAndTools.hub
    pkgs.nodejs-12_x
    pkgs.rustup
    pkgs.adoptopenjdk-openj9-bin-11
    pkgs.mdbook
    pkgs.ranger
    pkgs.gnupg
    pkgs.tmux
    pkgs.exercism
    pkgs.niv
    pkgs.ffmpeg
    pkgs.gradle
    pkgs.maven
    pkgs.procs
  ];
}
