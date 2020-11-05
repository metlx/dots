" This is my shit now
syntax on
colorscheme blue
nnoremap <C-c> :!g++ % && .\a.exe <Enter>
set nobackup       "no backup files
set nowritebackup  "only in case you don't want a backup file while editing
set noswapfile
filetype plugin indent on
set relativenumber

if &compatible
  set nocompatible
endif

set backspace=indent,eol,start

set wildmenu		" display completion matches in a status line
