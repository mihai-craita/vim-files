if &compatible
	set nocompatible
endif

" Required:
set runtimepath^=~/.vim/repos/github.com/Shougo/dein.vim

" Required:
call dein#begin(expand('~/.vim/'))

" Let dein manage dein
" Required:
call dein#add('Shougo/dein.vim')

" Add or remove your plugins here:
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

" Required:
call dein#end()

filetype plugin indent on

" If you want to install not installed plugins on startup.
if dein#check_install()
	call dein#install()
endif

" syntastic settings
let g:syntastic_php_checkers = ['php']
let g:syntastic_filetype_map = { "blade.php": "php" }
let g:syntastic_mode_map = { "mode": "active", "active_filetypes": ["php"], "passive_filetypes": ["html"] }
let g:syntastic_auto_jump=1

" NO MORE ARROW KEYS
inoremap  <Up>     <NOP>
inoremap  <Down>   <NOP>
inoremap  <Left>   <NOP>
inoremap  <Right>  <NOP>
noremap   <Up>     <NOP>
noremap   <Down>   <NOP>
noremap   <Left>   <NOP>
noremap   <Right>  <NOP>
" END - NO MORE ARROW KEYS

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

set backspace=indent,eol,start
syntax on               	" Enable syntax
set ruler                   " Line numbering on
set number
set relativenumber
set laststatus=2
set t_Co=256
set background=dark
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
set noerrorbells         	" don't beep
set textwidth=80           " longer lines will be broken
" set colorcolumn=+1         " limit line
highlight ColorColumn ctermbg=235 guibg=#2c2d27
let &colorcolumn="80,".join(range(120,999),",")

" Airline ------------------------------
let g:airline_powerline_fonts = 0
let g:airline_theme = 'base16_bright'
let g:airline#extensions#whitespace#enabled = 0

let g:ctrlp_custom_ignore = {
  \ 'dir':  '\v[\/](\.git|vendor|\.svn|node_modules)$',
  \ 'file': '\v\.(jpg|jpeg|png|gif|svg)$',
  \ }

" autocmd VimEnter * NERDTree
let g:NERDTreeWinPos = "right" " nerd tree open to the right
