if &compatible
    set nocompatible
endif

" Required:
set runtimepath^=~/.vim/repos/github.com/Shougo/dein.vim

if dein#load_state(expand('~/.vim/'))
    call dein#begin(expand('~/.vim/'))

    " Let dein manage dein
    call dein#add('Shougo/dein.vim')

    " Add or remove your plugins here:
    call dein#add('Shougo/neocomplete.vim')
    call dein#add('tpope/vim-commentary')
    call dein#add('tpope/vim-fugitive')
    call dein#add('kien/ctrlp.vim')
    call dein#add('airblade/vim-gitgutter')
    call dein#add('vim-airline/vim-airline')
    call dein#add('vim-airline/vim-airline-themes')
    call dein#add('scrooloose/syntastic')
    call dein#add('sheerun/vim-polyglot')
    call dein#add('vim-scripts/matchit.zip')
    call dein#add('scrooloose/nerdtree')

    call dein#end()
    call dein#save_state()
endif

filetype plugin indent on

" syntastic settings
let g:syntastic_php_checkers = ['php']
let g:syntastic_filetype_map = { "blade.php": "php" }
let g:syntastic_mode_map = { "mode": "active", "active_filetypes": ["php"], "passive_filetypes": ["html"] }
let g:syntastic_auto_jump=1

" remap jj to esc in insert mode
inoremap jj <esc>
" remap jj to ctrl+c (esc) in command mode
cnoremap jj <c-c>

" remove highlighted text when escape is pressed
nnoremap <silent> <CR> :nohlsearch<cr><cr>

" Encoding
set encoding=utf-8

set fileformats=unix,dos,mac
" no swap files
set noswapfile              

set backspace=indent,eol,start " http://vimdoc.sourceforge.net/htmldoc/options.html#'backspace'
syntax on               	" Enable syntax
set number                  " Line number on
set relativenumber          " show the line number relative to the line with the cursor
set showmatch		        " Show matching brackets.
set hlsearch                " highlight search
set ignorecase		        " Do case insensitive matching
set smartcase		        " Do smart case matching
set incsearch		        " Incremental search
set hidden                  " Hide buffers when they are abandoned

set tabstop=4 
set shiftwidth=4
set smarttab
set autoindent              " Copy indent from current line when starting a new line
set cindent                 " Get the amount of indent for line ccording the C indenting rules
set expandtab				" on tab press insert spaces
set showcmd                 " Show (partial) command available in status line
set pastetoggle=<F2>        " F2 toggles paste mode
set visualbell           	" don't beep

" neocomplete plugin --------------------------
" Disable AutoComplPop.
let g:acp_enableAtStartup = 0
" Use neocomplete.
let g:neocomplete#enable_at_startup = 1
" Use smartcase.
let g:neocomplete#enable_smart_case = 1
" Set minimum syntax keyword length.
let g:neocomplete#sources#syntax#min_keyword_length = 3
" <TAB>: completion.
inoremap <expr><TAB>  pumvisible() ? "\<C-n>" : "\<TAB>"
" <C-h>, <BS>: close popup and delete backword char.
inoremap <expr><C-h> neocomplete#smart_close_popup()."\<C-h>"
inoremap <expr><BS> neocomplete#smart_close_popup()."\<C-h>"

" Airline plugin ------------------------------
let g:airline_powerline_fonts = 0
let g:airline_theme = 'base16_bright'
let g:airline#extensions#whitespace#enabled = 0

" CTRLP plugin --------------------------------
let g:ctrlp_custom_ignore = {
            \ 'dir':  '\v[\/](\.git|vendor|\.svn|node_modules)$',
            \ 'file': '\v\.(jpg|jpeg|png|gif|svg)$',
            \ }

" NERDTree plugin -----------------------------
let g:NERDTreeWinPos = "right" " nerd tree open to the right
