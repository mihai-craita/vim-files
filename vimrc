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
"autocomplete using tab
Bundle 'ervandew/supertab'
" Bundle 'Valloric/YouCompleteMe' " cool script but needs a superior version
" of vim which is not available on all Linux distros
" match between tags using %
Bundle 'tsaleh/vim-matchit'
Bundle 'vim-scripts/taglist.vim'
Bundle 'scrooloose/nerdtree'

set autoindent
"Set syntax on
syntax enable
set t_Co=16;
set background=dark
colorscheme solarized
set hidden
set ruler
"Line numbering on
set nu
"indent based on filetype
"filetype on
set ts=3 sts=3 sw=3 expandtab
filetype plugin indent on
let g:php_folding=2
set foldmethod=syntax
"show available commands
set showcmd
autocmd FileType php set makeprg=php\ -l\ %
autocmd FileType ruby set makeprg=ruby\ %
let php_sql_query = 1  " for SQL syntax highlighting inside strings
let php_html_in_strings = 1  " for HTML syntax highlighting inside strings
let php_parent_error_close = 1  " for highlighting parent error ] or )
let php_folding = 1  " for folding classes and functions
