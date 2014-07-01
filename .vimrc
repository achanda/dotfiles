"Vundle setup
set nocompatible
filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'gmarik/Vundle.vim'
Plugin 'scrooloose/syntastic'
Plugin 'bling/vim-airline'
call vundle#end()
"filetype plugin indent on

let g:airline#extensions#syntastic#enabled = 1
let g:airline#extensions#virtualenv#enabled = 1

syntax on
set nu
set wrap
set hlsearch
set expandtab
set directory=/tmp/
set laststatus=2
set statusline +=%F
set statusline +=%2*%m%*                "modified flag
set statusline +=%1*%=%5l%*             "current line
set statusline +=%2*/%L%*               "total lines
set statusline +=%1*%4v\ %*             "virtual column number

set foldmethod=indent
set foldlevel=99
