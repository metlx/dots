scriptencoding utf-8
set fileencoding=utf-8

call plug#begin('~/.vim/plugged')

" lang pacs
Plug 'sheerun/vim-polyglot'

" Colour scheme
Plug 'chriskempson/base16-vim'

""  asthetix
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

"" icons? what?
Plug 'ryanoasis/vim-devicons'

call plug#end()

"" tab bar
let g:airline#extensions#tabline#enabled = 1

" Colours
set termguicolors
set background=dark
colorscheme base16-irblack

""Relative line numbers
""au BufReadPost * set relativenumber
""au BufReadPost * set number

" Smart search
set ignorecase
set smartcase

"" clean her up
set noshowmode

" Return to the same spot in the file that we were at
if has("autocmd")
  au BufReadPost * if line("'\"") > 0 && line("'\"") <= line("$")
    \| exe "normal! g'\"" | endif
endif

" Make the clipboard actually work
function! ClipboardYank()
  call system('xclip -i -selection clipboard', @@)
endfunction
function! ClipboardPaste()
  let @@ = system('xclip -o -selection clipboard')
endfunction

" im lazy close my shit
inoremap " ""<left>
inoremap ' ''<left>
inoremap ( ()<left>
inoremap [ []<left>
inoremap { {}<left>
inoremap {<CR> {<CR>}<ESC>O
inoremap {;<CR> {<CR>};<ESC>O
