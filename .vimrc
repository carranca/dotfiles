set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()
" alternatively, pass a path where Vundle should install bundles
"let path = '~/some/path/here'
"call vundle#rc(path)

" let Vundle manage Vundle, required
Bundle 'gmarik/vundle'

Bundle 'scrooloose/syntastic'
Bundle 'altercation/vim-colors-solarized'

" Highlight current line in insert mode.
autocmd InsertLeave * set nocursorline
autocmd InsertEnter * set cursorline

" Set the hidden option to enable moving through args and buffers without
" saving them first
set hidden

" Show line numbers by default
set number

set wrapscan

" Colorscheme
syntax enable
set background=dark
colorscheme solarized
