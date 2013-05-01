set nocompatible " Improved VIM
filetype off " required by Vundle plugin

" call Vundle plugin
set rtp+=~/.vim/bundle/vundle/
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
" Bundle 'Valloric/YouCompleteMe' 
" match between tags using %
Bundle 'tsaleh/vim-matchit'
Bundle 'vim-scripts/taglist.vim'
Bundle 'scrooloose/nerdtree'
Bundle 'othree/html5.vim.git'
Bundle 'tpope/vim-fugitive'
Bundle 'spf13/PIV'
Bundle 'ervandew/supertab'
Bundle 'kien/ctrlp.vim'
" Bundle 'fholgado/minibufexpl.vim'
Bundle 'scrooloose/syntastic'
" syntastic settings
let g:syntastic_php_checkers = ['php']
let g:syntastic_mode_map = { 'mode': 'active',
            \ 'active_filetypes': ['php'],
            \ 'passive_filetypes': [''] }
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

set autoindent
" set syntax on
syntax enable
" set background=dark
colorscheme desert
set hidden
set ruler
" line numbering on
set nu
set ts=4 sts=4 sw=4 expandtab
" indent based on filetype
filetype plugin indent on
"show available commands
set showcmd
autocmd FileType php set makeprg=php\ -l\ %
autocmd FileType ruby set makeprg=ruby\ %
