
execute pathogen#infect()

"-----Vundle configs
set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
" call vundle#begin('~/some/path/here')
" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

"Plugins list
Plugin 'tpope/vim-fugitive'
Plugin 'klen/python-mode'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"------End Vundle configs

"Plugins configs
"map F2 to open NERDTree
map <F2> :NERDTreeToggle<CR>

"Airline
let g:airline_powerline_fonts = 1

"Solarized
syntax enable
set background=dark

"Numbers
set number
let g:numbers_exclude = ['unite', 'tagbar', 'startify', 'gundo', 'vimshell', 'w3m']
nnoremap <F3> :NumbersToggle<CR>
nnoremap <F4> :NumbersOnOff<CR>

"Syntastic
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

"PyMode
let g:pymode = 1
let g:pymode_trim_whitespaces = 1 
let g:pymode_options = 1
let g:pymode_options_max_line_length = 79
let g:pymode_indent = 1 
let g:pymode_folding = 1
let g:pymode_motion = 1
let g:pymode_doc = 1
let g:pymode_doc_bind = 'K'
let g:pymode_virtualenv = 1
let g:pymode_run = 1
let g:pymode_lint_on_fly = 0
let g:pymode_lint_message = 1
let g:pymode_rope = 1
let g:pymode_rope_completion = 1
let g:pymode_syntax = 1
let g:pymode_syntax_all = 1
let g:pymode_syntax_indent_errors = g:pymode_syntax_all
let g:pymode_syntax_space_errors = g:pymode_syntax_all

"Add header to a new file automatically
autocmd bufnewfile *.py 0r ~/.vim/templates/py_header.txt
