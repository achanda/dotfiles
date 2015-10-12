"Vundle setup
set nocompatible
filetype off
set rtp+=~/.vim/bundle/Vundle.vim
set rtp+=$GOROOT/misc/vim
filetype plugin on
call vundle#begin()
Plugin 'gmarik/Vundle.vim'
Plugin 'scrooloose/syntastic'
Plugin 'bling/vim-airline'
Plugin 'tpope/vim-fugitive'
Plugin 'elzr/vim-json'
Plugin 'rust-lang/rust.vim'
Plugin 'rking/ag.vim'
Plugin 'phildawes/racer'
call vundle#end()
"filetype plugin indent on

""" Airline stuff
let g:airline_theme = 'powerlineish'
let g:airline#extensions#branch#enabled = 1
let g:airline#extensions#syntastic#enabled = 1
let g:airline#extensions#syntastic#enabled = 1
let g:airline#extensions#virtualenv#enabled = 1
let g:airline#extensions#branch#enabled = 1
let g:airline_left_sep='>'

" syntastic
let g:syntastic_always_populate_loc_list=1
let g:syntastic_aggregate_errors = 1

" Racer
set hidden
let g:racer_cmd = "/Users/Abhishek/src/racer/target/release/racer"

syntax on
set nu
set wrap
set hlsearch
set expandtab
set directory=/tmp/
set laststatus=2
set statusline=%F%m%r%h%w%=(%{&ff}/%Y)\ (line\ %l\/%L,\ col\ %c)\ %{fugitive#statusline()}

set foldmethod=indent
set foldlevel=99
set paste
"" Encoding
set encoding=utf-8
set fileencoding=utf-8
set fileencodings=utf-8

set backspace=indent,eol,start

" For rust
filetype on
au BufNewFile,BufRead *.rs set filetype=rust

if has("autocmd")
  au BufReadPost * if line("'\"") > 0 && line("'\"") <= line("$")
    \| exe "normal! g'\"" | endif
endif

" Extra config
set cursorline
set showcmd
set showmatch
