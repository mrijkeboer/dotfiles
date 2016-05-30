if v:progname =~? "evim"
	finish
endif

call pathogen#infect()
syntax on
filetype plugin indent on


set nocompatible
set modelines=0
set tabstop=4
set softtabstop=4
set shiftwidth=4
set expandtab
set nohlsearch
set ruler
set number
set foldmethod=manual
set backspace=indent,eol,start
set nobackup
set noswapfile
set history=50
set showcmd
set incsearch
set ttyfast
set showmode
set showcmd
set smartindent
set noerrorbells
set title
set number
set ignorecase
set smartcase
set pastetoggle=<F2>
set mouse=a
set visualbell

set term=screen-256color
set background=dark
set colorcolumn=80

set spelllang=en_us

let g:NERDTreeDirArrows=0
let g:sql_type_default = 'pgsql'

inoremap <F1> <ESC>
nnoremap <F1> <ESC>
vnoremap <F1> <ESC>

highlight ExtraWhitespace ctermbg=red guibg=red
match ExtraWhitespace /\s\+$\| \+\ze\t/

