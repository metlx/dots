scriptencoding utf-8
set fileencoding=utf-8

call plug#begin('~/.vim/plugged')

" Pop-up file manager
Plug 'https://github.com/scrooloose/nerdtree.git'

" lang pacs
Plug 'sheerun/vim-polyglot'

" Colour scheme
Plug 'chriskempson/base16-vim'

""  asthetix
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

"" icons? what? fuck yes.
Plug 'ryanoasis/vim-devicons'

call plug#end()

" Map F2 to NERDTreeToggle
map <F2> :NERDTreeToggle<CR>

let g:NERDTreeIndicatorMapCustom = {
    \ "Modified"  : "*",
    \ "Staged"    : "+",
    \ "Untracked" : "-",
    \ "Renamed"   : "/",
    \ "Unmerged"  : "=",
    \ "Deleted"   : "x",
    \ "Dirty"     : "*",
    \ "Clean"     : "`",
    \ "Unknown"   : "?"
    \ }

let g:NERDTreeIgnore = ['\.pyc$', '\.o$', '\.lib$', '\.a$', '\.dll$', '\.so$', '\.so\.', '\.dylib$', '\.exe$', '\.out$', '\.app$', '\.stackdump$']

"" tab bar
let g:airline#extensions#tabline#enabled = 1

" Colours
set termguicolors
syntax on
colorscheme base16-irblack
hi! Normal ctermbg=NONE guibg=NONE
hi! NonText ctermbg=NONE guibg=NONE

""Relative line numbers
""au BufReadPost * set relativenumber
""au BufReadPost * set number

" Smart search
set ignorecase
set smartcase


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

" close my shit
inoremap " ""<left>
inoremap ' ''<left>
inoremap ( ()<left>
inoremap [ []<left>
inoremap { {}<left>
