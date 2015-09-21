set nocompatible " Improved VIM

" Vundle plugin - the plug-in manager for VIM 
filetype off                " Required by Vundle plugin, changed later
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

    " let Vundle manage Vundle
    Plugin 'gmarik/Vundle.vim'

    " My Bundles here
    "
    Plugin 'scrooloose/nerdtree'
	Plugin 'tpope/vim-commentary'
    Plugin 'tpope/vim-fugitive'
    Plugin 'kien/ctrlp.vim'
    Plugin 'bling/vim-airline'
	Plugin 'airblade/vim-gitgutter'
	Plugin 'sheerun/vim-polyglot'
    Plugin 'mattn/emmet-vim'
    " solarized theme
    Plugin 'altercation/vim-colors-solarized'
    " autocomplete using tab, it needs Vim 7.3.584 with python2 support not shipped on all Linux distros
    " check this for more instructions https://github.com/Valloric/YouCompleteMe
    Plugin 'Valloric/YouCompleteMe' 
    Plugin 'gregsexton/MatchTag'
    Plugin 'edsono/vim-matchit'
	Plugin 'kchmck/vim-coffee-script'
    Plugin 'scrooloose/syntastic'
	Plugin 'StanAngeloff/php.vim'
	Plugin 'xsbeats/vim-blade'
	call vundle#end()            " required
	filetype plugin indent on    " required
    " syntastic settings
    let g:syntastic_php_checkers = ['php']
	let g:syntastic_html_checkers=['']
    let g:syntastic_mode_map = { 'mode': 'active',
                \ 'active_filetypes': ['php'],
                \ 'passive_filetypes': ['tpl, js'] }
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

"" Encoding
set encoding=utf-8
set fileencoding=utf-8
set fileencodings=utf-8

set fileformats=unix,dos,mac
set noswapfile              " no swap files

set backspace=indent,eol,start
syntax on               	" Enable syntax
set ruler                   " Line numbering on
set number
set background=dark
colorscheme solarized
set showmatch		        " Show matching brackets.
set hlsearch                " highlight search
set ignorecase		        " Do case insensitive matching
set smartcase		        " Do smart case matching
set incsearch		        " Incremental search
set hidden                  " Hide buffers when they are abandoned

set ts=4 sw=4
set autoindent
set noexpandtab
set showcmd                 " Show (partial) command available in status line
set pastetoggle=<F2>        " F2 toggles paste mode
set noerrorbells            " No noise.
" open blade files as html, using syntax, ident and this will also match between html tags
autocmd BufReadPost *.blade.php set filetype=html
autocmd FileType php set makeprg=php\ -l\ %
autocmd FileType ruby set makeprg=ruby\ %
