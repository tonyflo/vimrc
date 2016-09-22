"set nu
colorscheme desert
syntax on
set hlsearch
match ErrorMsg '\s\+$'
" Tell vim to remember certain things when we exit
"  '10  :  marks will be remembered for up to 10 previously edited files
"  "100 :  will save up to 100 lines for each register
"  :20  :  up to 20 lines of command-line history will be remembered
"  %    :  saves and restores the buffer list
"  n... :  where to save the viminfo files
"set viminfo='10,\"100,:20,%,n~/.viminfo

" 100 line of cmd hist
"10000 lines of yank registers
set viminfo='100,\"10000

"set number
"set indent

" Remember cursor position
if has("autocmd")
  au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif
endif

" https://docs.oseems.com/general/application/vim/auto-complete-php
autocmd FileType php set omnifunc=phpcomplete#CompletePHP

set hlsearch
if &diff
   syntax off
   "cterm*: entire line color
   highlight DiffAdd cterm=none gui=none ctermfg=green ctermbg=none guifg=none guibg=none
   highlight DiffDelete cterm=none gui=none ctermfg=red ctermbg=none guifg=none guibg=none
   highlight DiffChange cterm=none gui=none ctermfg=none ctermbg=none guifg=none guibg=none
   highlight DiffText cterm=none gui=none ctermfg=red ctermbg=red guifg=none guibg=none
endif
