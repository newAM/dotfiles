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

call plug#begin('~/.config/nvim/plugged')

" :PlugInstall

Plug 'christoomey/vim-tmux-navigator'
Plug 'crusoexia/vim-monokai'
Plug 'preservim/nerdtree'
Plug 'psf/black'
Plug 'rust-lang/rust.vim'
Plug 'sheerun/vim-polyglot'
Plug 'vim-airline/vim-airline'
Plug 'vim-syntastic/syntastic'
Plug 'ycm-core/YouCompleteMe'

call plug#end()

" bindings
map <C-n> :NERDTreeToggle<CR>
map <C-p> :set invnumber<CR>

" nvim settings
let g:python3_host_prog = '/usr/bin/python3.8'

" enable powerline fonts
let g:airline_powerline_fonts = 1
let g:airline_highlighting_cache = 1

" syntastic settings
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*
let g:syntastic_always_populate_loc_list = 0
let g:syntastic_auto_loc_list = 0
let g:syntastic_check_on_open = 0
let g:syntastic_check_on_wq = 0
let g:syntastic_python_checkers = ['flake8']
let g:syntastic_cpp_checkers = ['cpplint']
let g:syntastic_cpp_cpplint_exec = 'cpplint'
let g:syntastic_cpp_cpplint_args = "--filter=-legal"

" rust
let g:rustfmt_autosave = 1

" YouCompleteMe settings
let g:ycm_autoclose_preview_window_after_insertion = 1

" theme
silent! colorscheme monokai

" spell check
set spell spelllang=en_ca
set spellfile=~/.config/nvim/spell/en.utf-8.add
highlight clear SpellBad
highlight clear SpellCap
highlight clear SpellLocal
highlight clear SpellRare
highlight SpellBad cterm=underline
highlight SpellBad gui=undercurl
