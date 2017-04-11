" 4 spaces wide tabs
:set tabstop=4

" specify indentation as 4 spaces too
:set shiftwidth=4

:set fileformat=unix

" replace tabs with spaces
:set expandtab

" guess syntax
syntax on

" show line numbers
:set number

" show filename on window title
:set title

" highlight search results
:set hlsearch

" start searching while entering search words
:set incsearch

" trail whitespaces on save
autocmd BufWritePre * :%s/\s\+$//e

" Change colors of text and background after 71 chars
highlight OverLength ctermbg=red ctermfg=white
match OverLength /\%71v.\+/

" change color of 72 column
set colorcolumn=72
