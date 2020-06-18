with import <nixpkgs> {};
stdenv.mkDerivation rec {
  name = "firstjob-api";
  env = buildEnv { name = name; paths = buildInputs; };
  buildInputs = [
    darwin.cf-private
    darwin.apple_sdk.frameworks.CoreServices
    openssl
    curl
    libffi
    git
    postgresql_11
    python37
    python37Packages.virtualenv
  ];
  shellHook = ''
    alias cat="bat"
    alias g="git"
    alias gl="git log"
    alias gws="git status"
    alias v="nvim"

    SOURCE_DATE_EPOCH=$(date +%s)
    if [ ! -f .env/bin/activate ]; then
        virtualenv .env
    fi
    source ./.env/bin/activate
    export PATH=$PWD/.env/bin:$PATH 
  '';
}

