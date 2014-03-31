set nocompatible " Improved VIM

" Vundle plugin - the plug-in manager for VIM 
filetype off                " Required by Vundle plugin, changed later
set rtp+=~/.vim/bundle/vundle/
" if exists("*vundle#rc")     " Call Vundle plugin if it is installed
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
    Bundle 'scrooloose/nerdtree'
    Bundle 'othree/html5.vim.git'
    Bundle 'pangloss/vim-javascript'
    Bundle 'tpope/vim-fugitive'
    Bundle 'kien/ctrlp.vim'
    Bundle 'scrooloose/syntastic'
    " syntastic settings
    let g:syntastic_php_checkers = ['php']
    let g:syntastic_mode_map = { 'mode': 'active',
                \ 'active_filetypes': ['php'],
                \ 'passive_filetypes': [''] }
    let g:syntastic_auto_jump=1
" endif

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

set noswapfile              " no swap files
syntax enable               " Enable syntax
set background=dark
" let g:solarized_termcolors=16
" let g:solarized_contrast="normal"
colorscheme solarized
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
