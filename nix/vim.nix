pkgs: neovim: 
neovim.override {
    viAlias = true;
    vimAlias = true;
    configure = {
      customRC = ''
        set fileformat=unix
        set encoding=utf-8
        set fileencoding=utf-8
        let g:seoul256_background = 233
        silent! colorscheme seoul256
        let g:seoul256_srgb = 1
        set background=dark
        set termguicolors
        set shortmess=atI
        set textwidth=79
        set colorcolumn=80
        set cursorcolumn
        set cursorline
        set cmdheight=2
        set tabstop=4
        set smarttab
        set softtabstop=0
        set shiftwidth=4
        set expandtab
        set number
        set numberwidth=5
        set showcmd
        set display+=lastline
        set autochdir
        set autoread
        nmap <F8> :TagbarToggle<CR>
        set clipboard=unnamed
        set encoding=utf-8
        set hidden
        set history=5000
        set laststatus=2
        set pastetoggle=<F3>
        set foldmethod=indent
        set showmatch
        set wildmenu
        set wildmode=list:longest
        set wildignore+=.hg,.git,.svn " Version Controls"
        set wildignore+=*.aux,*.out,*.toc "Latex Indermediate files"
        set wildignore+=*.jpg,*.bmp,*.gif,*.png,*.jpeg "Binary Imgs"
        set wildignore+=*.o,*.obj,*.exe,*.dll,*.manifest "Compiled Object files"
        set wildignore+=*.spl "Compiled speolling world list"
        set wildignore+=*.sw? "Vim swap files"
        set wildignore+=*.DS_Store "OSX files"
        set wildignore+=*.luac "Lua byte code"
        set wildignore+=migrations "Django migrations"
        set wildignore+=*.pyc "Python Object codes"
        set wildignore+=*.orig "Merge resolution files"
        set wildignore+=*.class "java/scala class files"
        set wildignore+=*/target/* "sbt target directory"
        let NERDTreeIgnore=['\.pyc$', '\~$', 'target'] "ignore files in NERDTree
        let NERDTreeRespectWildIgnore=1
        let NERDTreeQuitOnOpen=1
        let mapleader = "\<space>"
        map! jj <ESC>
        map <leader>m :NERDTreeToggle<CR>
        map <leader>n :NERDTree<CR>
        map <leader>e :NERDTreeFind<CR>
        nmap <Tab> :call SwitchBuffer()<CR>
        let NERDTreeShowHidden=1
        map <leader>c :w !pbcopy <CR><CR>
        set rtp+=/usr/local/opt/fzf
        imap <c-x><c-o> <plug>(fzf-complete-line)
        map <leader>b :Buffers<cr>
        map <leader>f :Files<cr>
        map <leader>g :GFiles<cr>
        map <leader>t :Tags<cr>
        autocmd! FileType fzf tnoremap <buffer> <leader>q <c-c>
        nmap <leader>l :bnext<CR>
        nmap <leader>h :bprevious<CR>
        set backup
        set noswapfile
        set undodir=~/.vim/tmp/undo//
        set backupdir=~/.vim/tmp/backup//
        set directory=~/.vim/tmp/swap//
        if !isdirectory(expand(&undodir))
            call mkdir(expand(&undodir), "p")
        endif
        if !isdirectory(expand(&backupdir))
            call mkdir(expand(&backupdir), "p")
        endif
        if !isdirectory(expand(&directory))
            call mkdir(expand(&directory), "p")
        endif
        command! -bang -nargs=* Find call fzf#vim#grep('rg --column --line-number --no-heading --fixed-strings --ignore-case --no-ignore --hidden --follow --glob "!.git/*" --color "always" '.shellescape(<q-args>).'| tr -d "\017"', 1, <bang>0)
        if executable("rg")
            set grepprg=rg\ --vimgrep\ --no-heading
            set grepformat=%f:%l:%c:%m,%f:%l:%m
        endif
        let g:ackprg='rg --vimgrep --no-heading'
        set grepprg=rg\ --vimgrep
        nnoremap <Leader>* :grep! "\b<C-R><C-W>\b"<CR>:cw<CR>
        let g:airline_enabled=1
        let g:airline_powerline_fonts=1
        let g:airline#extensions#tabline#enabled = 1
        let g:airline#extensions#tabline#fnamemod = ':t'
        let g:airline_theme='tomorrow'
        "set guifont=Inconsolata\ for\ Powerline
        "}}}
        autocmd filetype scala setlocal shiftwidth=2 tabstop=2 softtabstop=2 expandtab
        au BufRead,BufNewFile *.sbt set filetype=scala
        let g:rainbow_active = 1

        let g:rainbow_conf = {
            \   'guifgs': ['royalblue3', 'darkorange3', 'seagreen3', 'firebrick'],
            \   'ctermfgs': ['lightblue', 'lightyellow', 'lightcyan', 'lightmagenta'],
            \   'operators': '_,_',
            \   'parentheses': ['start=/(/ end=/)/ fold', 'start=/\[/ end=/\]/ fold', 'start=/{/ end=/}/ fold'],
            \   'separately': {
            \       '*': {},
            \       'tex': {
            \           'parentheses': ['start=/(/ end=/)/', 'start=/\[/ end=/\]/'],
            \       },
            \       'lisp': {
            \           'guifgs': ['royalblue3', 'darkorange3', 'seagreen3', 'firebrick', 'darkorchid3'],
            \       },
            \       'vim': {
            \           'parentheses': ['start=/(/ end=/)/', 'start=/\[/ end=/\]/', 'start=/{/ end=/}/ fold', 'start=/(/ end=/)/ containedin=vimFuncBody', 'start=/\[/ end=/\]/ containedin=vimFuncBody', 'start=/{/ end=/}/ fold containedin=vimFuncBody'],
            \       },
            \       'html': {
            \           'parentheses': ['start=/\v\<((area|base|br|col|embed|hr|img|input|keygen|link|menuitem|meta|param|source|track|wbr)[ >])@!\z([-_:a-zA-Z0-9]+)(\s+[-_:a-zA-Z0-9]+(\=("[^"]*"|'."'".'[^'."'".']*'."'".'|[^ '."'".'"><=`]*))?)*\>/ end=#</\z1># fold'],
            \       },
            \       'css': 0,
            \   }
            \}
        let g:netrw_list_hide= '.*\.pyc$'
        let g:netrw_liststyle = 3
        let g:netrw_banner = 0
        let g:netrw_browse_split = 2
        let g:netrw_winsize = 25
        let g:netrw_altv = 1
        set updatetime=300
        set shortmess+=c
        set signcolumn=yes
        set nobackup
        set nowritebackup
        set cmdheight=2
        inoremap <silent><expr> <c-space> coc#refresh()
        inoremap <expr> <cr> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"
        nmap <silent> [c <Plug>(coc-diagnostic-prev)
        nmap <silent> ]c <Plug>(coc-diagnostic-next)
        nmap <silent> gd <Plug>(coc-definition)
        nmap <silent> gy <Plug>(coc-type-definition)
        nmap <silent> gi <Plug>(coc-implementation)
        nmap <silent> gr <Plug>(coc-references)
        nmap <leader>ac <Plug>(coc-codeaction)
        nnoremap <silent> F :call CocAction('format')<CR>
        nnoremap <silent> K :call <SID>show_documentation()<CR>
        function! s:show_documentation()
          if &filetype == 'vim'
            execute 'h '.expand('<cword>')
          else
            call CocAction('doHover')
          endif
        endfunction
        autocmd CursorHold * silent call CocActionAsync('highlight')
        nmap <leader>rn <Plug>(coc-rename)
        nnoremap <silent> <space>a  :<C-u>CocList diagnostics<cr>
        nnoremap <silent> <space>o  :<C-u>CocList outline<cr>
        nnoremap <silent> <space>s  :<C-u>CocList -I symbols<cr>
        nnoremap <silent> <space>j  :<C-u>CocNext<CR>
        nnoremap <silent> <space>k  :<C-u>CocPrev<CR>
        nnoremap <silent> <space>p  :<C-u>CocListResume<CR>
        let g:airline#extensions#disable_rtp_load = 1
        let g:airline_extensions = ['branch', 'hunks', 'coc']
        let g:airline_section_error = '%{airline#util#wrap(airline#extensions#coc#get_error(),0)}'
        let g:airline_section_warning = '%{airline#util#wrap(airline#extensions#coc#get_warning(),0)}'
    '';
      packages.myVimPackage = with pkgs.vimPlugins; {
        start = [
          "vim-airline"
            "vim-airline-themes"
            "coc.nvim"
            "coc-json"
            "coc-python"
            "coc-tabnine"
            "coc-yaml"
            "fzf.vim"
            "seoul256.vim"
            "nerdtree"
            "nerdtree-git-plugin"
            "vim-polyglot"
            "echodoc.vim"
            "vim-fugitive"
            "vim-rhubarb"
            "vim-commentary"
            "vim-surround"
            "vim-gitgutter"
            "vim-rooter"
            "ack.vim"
            "rainbow"
            "ghcid"
        ];
        opt = [ ];
      };
    };
} 
