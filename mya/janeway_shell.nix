with import <nixpkgs> {};

stdenv.mkDerivation {
    name = "node";
    buildInputs = [
        darwin.apple_sdk.frameworks.CoreServices
        jq
        nodejs
        yarn
    ];
    shellHook = ''
        export PATH="$PWD/node_modules/.bin/:$PATH"
        alias scripts='jq ".scripts" package.json'
    '';
}

