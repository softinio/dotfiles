if &compatible
  set nocompatible
end

" Plug plugin manager
call plug#begin('~/.vim/plugged')

 " My Bundles here:
 Plug 'vim-airline/vim-airline'
 Plug 'vim-airline/vim-airline-themes'
 Plug 'neoclide/coc.nvim', {'do': { -> coc#util#install()}}
 Plug 'neoclide/coc-html'
 Plug 'neoclide/coc-json'
 Plug 'neoclide/coc-java'
 Plug 'neoclide/coc-python'
 Plug 'neoclide/coc-snippets'
 Plug 'neoclide/coc-tabnine'
 Plug 'neoclide/coc-yaml'
 Plug 'scalameta/coc-metals', {'do': 'yarn install --frozen-lockfile'}
 Plug 'fannheyward/coc-xml'
 Plug 'honza/vim-snippets'
 Plug 'scrooloose/nerdtree'
 Plug 'Xuyuanp/nerdtree-git-plugin'
 Plug 'tpope/vim-fugitive'
 Plug 'tpope/vim-obsession'
 Plug 'tpope/vim-rhubarb'
 Plug 'tpope/vim-surround'
 Plug 'tpope/vim-commentary'
 Plug 'junegunn/gv.vim'
 Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
 Plug 'junegunn/fzf.vim'
 Plug 'junegunn/seoul256.vim'
 Plug 'junegunn/vim-slash'
 Plug 'airblade/vim-gitgutter'
 Plug 'airblade/vim-rooter'
 Plug 'mileszs/ack.vim'
 Plug 'dyng/ctrlsf.vim'
 Plug 'luochen1990/rainbow'
 Plug 'jiangmiao/auto-pairs'
 Plug 'sheerun/vim-polyglot'
 Plug 'elzr/vim-json'
 Plug 'godlygeek/tabular'
 Plug 'plasticboy/vim-markdown'

 Plug 'vimlab/split-term.vim'
 Plug 'ndmitchell/ghcid', { 'rtp': 'plugins/nvim' }

 Plug 'christoomey/vim-tmux-navigator'
 Plug 'tmux-plugins/vim-tmux'

 Plug 'rhysd/git-messenger.vim'
 Plug 'tveskag/nvim-blame-line'
 Plug 'mzlogin/vim-markdown-toc'


 function! BuildComposer(info)
  if a:info.status != 'unchanged' || a:info.force
    if has('nvim')
      !cargo build --release --locked
    else
      !cargo build --release --locked --no-default-features --features json-rpc
    endif
  endif
endfunction

Plug 'euclio/vim-markdown-composer', { 'do': function('BuildComposer') }

 if filereadable(expand("~/.plugins.vim.local"))
  source ~/.plugins.vim.local
 endif

 " Initialize plugin system
call plug#end()

