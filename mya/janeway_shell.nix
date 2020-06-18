with import <nixpkgs> {};

stdenv.mkDerivation {
    name = "node";
    buildInputs = [
        darwin.apple_sdk.frameworks.CoreServices
        jq
        nodejs-13_x
        yarn
    ];
    shellHook = ''
      alias cat="bat"
      alias g="git"
      alias gl="git log"
      alias gws="git status"
      alias v="nvim"

      export PATH="$PWD/node_modules/.bin/:$PATH"
      alias scripts='jq ".scripts" package.json'
    '';
}

