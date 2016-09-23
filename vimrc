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

" NeoComplCache ------------------------------
"
" most of them not documented because I'm not sure how they work
" (docs aren't good, had to do a lot of trial and error to make 
" it play nice)
let g:neocomplcache_enable_at_startup = 1
let g:neocomplcache_enable_ignore_case = 1
let g:neocomplcache_enable_smart_case = 1
let g:neocomplcache_enable_auto_select = 1
let g:neocomplcache_enable_fuzzy_completion = 1
let g:neocomplcache_enable_camel_case_completion = 1
let g:neocomplcache_enable_underbar_completion = 1
let g:neocomplcache_fuzzy_completion_start_length = 1
let g:neocomplcache_auto_completion_start_length = 1
let g:neocomplcache_manual_completion_start_length = 1
let g:neocomplcache_min_keyword_length = 1
let g:neocomplcache_min_syntax_length = 1
" complete with workds from any opened file
let g:neocomplcache_same_filetype_lists = {}
let g:neocomplcache_same_filetype_lists._ = '_'
" Enable omni completion.
autocmd FileType css setlocal omnifunc=csscomplete#CompleteCSS
autocmd FileType html,markdown setlocal omnifunc=htmlcomplete#CompleteTags
autocmd FileType javascript setlocal omnifunc=javascriptcomplete#CompleteJS
autocmd FileType xml setlocal omnifunc=xmlcomplete#CompleteTags
" Enable heavy omni completion.
if !exists('g:neocomplcache_force_omni_patterns')
   let g:neocomplcache_force_omni_patterns = {}
endif
let g:neocomplcache_force_omni_patterns.php = '[^. \t]->\h\w*\|\h\w*::'

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

set ts=4 sw=4
set smarttab
set autoindent
set noexpandtab
set showcmd                 " Show (partial) command available in status line
set pastetoggle=<F2>        " F2 toggles paste mode
set visualbell           	" don't beep
set noerrorbells         	" don't beep

" Airline ------------------------------
let g:airline_powerline_fonts = 0
let g:airline_theme = 'base16_bright'
let g:airline#extensions#whitespace#enabled = 0

let g:ctrlp_custom_ignore = {
  \ 'dir':  '\v[\/](\.git|vendor|\.svn|node_modules)$',
  \ 'file': '\v\.(jpg|jpeg|png|gif|svg)$',
  \ }

" open blade files as html, using syntax, ident and this will also match between html tags
autocmd BufReadPost *.blade.php set filetype=html

" autocmd VimEnter * NERDTree
