" General
""""""""""""""""""""""""""""""""

" not compatible with the old-fashion vi mode
set nocompatible

" show the cursor position all the time
set ruler
" Show current mode
set showmode
" Show line number
set number

" auto read when file is changed from outside
set autoread

" Enable filetype detection
filetype on
" Enable filetype-specific indenting
filetype indent on
" Enable filetype-specific plugins
filetype plugin on
" Customized filetypes
au BufNewFile,BufRead *.jsm set filetype=javascript

" syntax highlight
syntax on

" incremental search
set incsearch
" search highlighting
set hlsearch
