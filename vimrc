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
" 80 characters line
set colorcolumn=81
colorscheme ron

" incremental search
set incsearch
" search highlighting
set hlsearch

" Highlight trailing spaces
" http://vim.wikia.com/wiki/Highlight_unwanted_spaces
highlight ExtraWhitespace ctermbg=red guibg=red
match ExtraWhitespace /\s\+$/
autocmd BufWinEnter * match ExtraWhitespace /\s\+$/
autocmd InsertEnter * match ExtraWhitespace /\s\+\%#\@<!$/
autocmd InsertLeave * match ExtraWhitespace /\s\+$/
autocmd BufWinLeave * call clearmatches()
