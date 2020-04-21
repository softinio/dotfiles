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
    postgresql_9_6
    python37
    python37Packages.virtualenv
  ];
  shellHook = ''
    SOURCE_DATE_EPOCH=$(date +%s)
    if [ ! -f .env/bin/activate ]; then
        virtualenv .env
    fi
    source ./.env/bin/activate
    export PATH=$PWD/.env/bin:$PATH 
  '';
}

