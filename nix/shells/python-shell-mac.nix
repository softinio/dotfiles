with import <nixpkgs> {};
stdenv.mkDerivation rec {
  name = "python-shell-mac";
  env = buildEnv { name = name; paths = buildInputs; };
  buildInputs = [
    darwin.cf-private
    darwin.apple_sdk.frameworks.CoreServices
    python37
    python37Packages.virtualenv
    python37Packages.pip
    postgresql
    redis
  ];
  shellHook = ''
    SOURCE_DATE_EPOCH=$(date +%s)
    mkdir -p .env/data/redis
    export PGDATA=$PWD/.env/data/postgres_data
    export PGHOST=$PWD/.env/data/postgres
    export LOG_PATH=$PWD/.env/data/postgres/LOG
    export PGDATABASE=postgres
    export DATABASE_URL="postgresql:///postgres?host=$PGHOST"
    if [ ! -d $PGHOST ]; then
      mkdir -p $PGHOST
    fi
    if [ ! -d $PGDATA ]; then
      echo 'Initializing postgresql database...'
      initdb $PGDATA --auth=trust >/dev/null
    fi
    pg_ctl start -l $LOG_PATH -o "-c listen_addresses= -c unix_socket_directories=$PGHOST"
    redis-server --dir .env/data/redis &
    virtualenv --no-setuptools .env > /dev/null
    source .env/bin/activate
    export MYENV=nix_python
    trap "'pg_ctl' stop --silent -W && 'redis-cli' shutdown" EXIT
  '';
}

