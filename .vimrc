" spell check
set spell spelllang=en_ca
set spellfile=~/.vim/spell/en.utf-8.add

" display tabs
set list
set listchars=tab:>-

" insert spaces when pressing tab
set expandtab
" show existing tabs as 4 spaces
set tabstop=4
" when expanding tabs, use 4 spaces
set shiftwidth=4

" per-file settings
filetype on
autocmd FileType markdown setlocal shiftwidth=2 tabstop=2 expandtab
