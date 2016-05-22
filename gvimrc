set lines=35
set columns=120
set guioptions+=a
set guioptions+=m
set guioptions-=T
set guioptions-=r
set guioptions-=R
set guioptions-=l
set guioptions-=L
set showtabline=0

set cursorline
set background=dark
colorscheme solarized

highlight ExtraWhitespace ctermbg=red guibg=red
match ExtraWhitespace /\s\+$\| \+\ze\t/

let NERDTreeHighlightCursorline=0

NERDTree ~/
