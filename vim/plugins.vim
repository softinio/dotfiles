if &compatible
  set nocompatible
end

" Plug plugin manager
call plug#begin('~/.vim/plugged')

 " My Bundles here:
 Plug 'vim-airline/vim-airline'
 Plug 'vim-airline/vim-airline-themes'
 Plug 'w0rp/ale'
 Plug 'autozimu/LanguageClient-neovim', {'tag': 'binary-*-x86_64-apple-darwin' }
 Plug 'roxma/nvim-completion-manager'
 Plug 'rust-lang/rust.vim'
 Plug 'racer-rust/vim-racer'
 Plug 'roxma/nvim-cm-racer'
 Plug 'mhartington/nvim-typescript'
 Plug 'HerringtonDarkholme/yats.vim'
 Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
 Plug 'junegunn/fzf.vim'
 Plug 'junegunn/seoul256.vim'
 Plug 'junegunn/vim-slash'
 Plug 'majutsushi/tagbar'
 Plug 'scrooloose/nerdtree'
 Plug 'Xuyuanp/nerdtree-git-plugin'
 Plug 'tpope/vim-fugitive'
 Plug 'junegunn/gv.vim'
 Plug 'tpope/vim-surround'
 Plug 'tpope/vim-commentary'
 Plug 'airblade/vim-gitgutter'
 Plug 'airblade/vim-rooter'
 Plug 'mileszs/ack.vim'
 Plug 'luochen1990/rainbow'
 Plug 'gorkunov/smartpairs.vim'
 Plug 'ervandew/supertab'
 Plug 'brooth/far.vim'
 Plug 'jsfaint/gen_tags.vim'
 Plug 'jiangmiao/auto-pairs'

 Plug 'vim-scripts/indentpython.vim'
 Plug 'fatih/vim-go'
 Plug 'othree/html5-syntax.vim'
 Plug 'lilydjwg/colorizer'
 Plug 'OmniSharp/Omnisharp-vim'
 Plug 'ryanoasis/vim-devicons'
 Plug 'cespare/vim-toml'
 Plug 'elzr/vim-json'
 Plug 'godlygeek/tabular'
 Plug 'plasticboy/vim-markdown'
 Plug 'aliou/markoff.vim'
 Plug 'docker/docker' , {'rtp': '/contrib/syntax/vim/'}
 Plug 'sbdchd/neoformat'

 Plug 'SirVer/ultisnips'
 Plug 'honza/vim-snippets'

 if filereadable(expand("~/.plugins.vim.local"))
  source ~/.plugins.vim.local
 endif

 " Initialize plugin system
call plug#end()

