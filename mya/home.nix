{ config, pkgs, ... }:

{
  # Let Home Manager install and manage itself.
  programs.home-manager.enable = true;
  # programs.neovim.enable = true;

  # programs.zsh.enable = true;

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
    pkgs.lua
    # ( pkgs.lua.withPackages (ps: with ps; [ luarocks mpack ]) )
    ( pkgs.python37.withPackages (ps: with ps; [ pip pynvim ]) )
    pkgs.bashInteractive
    pkgs.which
    pkgs.zsh
    pkgs.git
    pkgs.tig
    pkgs.fzf
    pkgs.bat
    pkgs.ripgrep
    pkgs.go
    pkgs.jq
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
    pkgs.yarn
  ];
}
