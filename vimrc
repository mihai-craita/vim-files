set nocompatible " Improved VIM

" Vundle plugin - the plug-in manager for VIM 
filetype off                " Required by Vundle plugin, changed later
set rtp+=~/.vim/bundle/vundle/
if exists("*vundle#rc")     " Call Vundle plugin if it is installed
    call vundle#rc()

    " let Vundle manage Vundle
    Bundle 'gmarik/vundle'

    " My Bundles here
    "
    Bundle 'mattn/zencoding-vim'
    " solarized theme
    Bundle 'altercation/vim-colors-solarized'
    " autocomplete using tab, it needs Vim 7.3.584 with python2 support not shipped on all Linux distros
    " check this for more instructions https://github.com/Valloric/YouCompleteMe
    Bundle 'Valloric/YouCompleteMe' 
    " match between tags using %
    Bundle 'tsaleh/vim-matchit'
    Bundle 'vim-scripts/taglist.vim'
    Bundle 'scrooloose/nerdtree'
    Bundle 'othree/html5.vim.git'
    Bundle 'jiangmiao/simple-javascript-indenter'
    Bundle 'tpope/vim-fugitive'
    " Bundle 'ervandew/supertab'
    Bundle 'kien/ctrlp.vim'
    " Bundle 'fholgado/minibufexpl.vim'
    Bundle 'scrooloose/syntastic'
    " syntastic settings
    let g:syntastic_php_checkers = ['php']
    let g:syntastic_mode_map = { 'mode': 'active',
                \ 'active_filetypes': ['php'],
                \ 'passive_filetypes': [''] }
    let g:syntastic_auto_jump=1
endif

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

set autoindent              " Simple indent copy the indentation from the previous line
syntax enable               " Enable syntax
set background=dark
colorscheme desert
set showmatch		        " Show matching brackets.
set ignorecase		        " Do case insensitive matching
set smartcase		        " Do smart case matching
set incsearch		        " Incremental search
set hidden                  " Hide buffers when they are abandoned
set ruler                   " Line numbering on
set nu
set ts=4 sts=4 sw=4 expandtab
filetype plugin indent on   " Indent based on filetype
set showcmd                 " Show (partial) command available in status line
set pastetoggle=<F2>        " F2 toggles paste mode
autocmd FileType php set makeprg=php\ -l\ %
autocmd FileType ruby set makeprg=ruby\ %
