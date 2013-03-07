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
Bundle 'Valloric/YouCompleteMe' 
" match between tags using %
Bundle 'tsaleh/vim-matchit'
Bundle 'vim-scripts/taglist.vim'
Bundle 'scrooloose/nerdtree'

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
let g:php_folding=2
set foldmethod=syntax
"show available commands
set showcmd
autocmd FileType php set makeprg=php\ -l\ %
autocmd FileType ruby set makeprg=ruby\ %
let php_sql_query = 1  " for SQL syntax highlighting inside strings
let php_html_in_strings = 0  " for HTML syntax highlighting inside strings
let php_parent_error_close = 1  " for highlighting parent error ] or )
let php_folding = 1  " for folding classes and functions
