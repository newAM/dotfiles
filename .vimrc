" spell check
set spell spelllang=en_ca
set spellfile=~/.vim/spell/en.utf-8.add

" theme
color desert

" display tabs
set list
set listchars=tab:>-

" insert spaces when pressing tab
set expandtab
" show existing tabs as 4 spaces
set tabstop=4
" when expanding tabs, use 4 spaces
set shiftwidth=4
" show line numbers
set number

" per-file settings
filetype on
autocmd FileType markdown setlocal shiftwidth=2 tabstop=2 expandtab
autocmd FileType yaml setlocal shiftwidth=2 tabstop=2 expandtab
autocmd BufWritePre *.py execute ':Black'

call plug#begin('~/.vim/plugged')

Plug 'psf/black'
Plug 'vim-syntastic/syntastic'

call plug#end()

" syntastic settings
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
let g:syntastic_python_checkers = ['flake8']
let g:syntastic_cpp_checkers = ['cpplint']
let g:syntastic_cpp_cpplint_exec = 'cpplint'
let g:syntastic_cpp_cpplint_args = "--filter=-legal"
