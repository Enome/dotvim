" Pathogen
filetype off
call pathogen#runtime_append_all_bundles()

set number
colorscheme wombat256mod
set guifont=Consolas\ 11
set linespace=2

filetype on
filetype plugin on
filetype indent on
syntax on

"change leader
let mapleader=","

"use spaces instead of tabs
set expandtab

" maps
map <F2> :tabn<CR>
map <F3> :NERDTree<CR>
map <F12> :%s/\r\+$//e<CR>
map <F5> :retab<CR>

"ignore pyc
set wildignore=*.pyc

" makes vim use .gitignore
let filename = '.gitignore'
if filereadable(filename)
    let igstring = ''
    for oline in readfile(filename)
        let line = substitute(oline, '\s|\n|\r', '', "g")
        if line =~ '^#' | con | endif
        if line == '' | con  | endif
        if line =~ '^!' | con  | endif
        if line =~ '/$' | let igstring .= "," . line . "*" | con | endif
        let igstring .= "," . line
    endfor
    let execstring = "set wildignore=".substitute(igstring, '^,', '', "g")
    execute execstring
endif

" remember folds 
au BufWinLeave * silent! mkview
au BufWinEnter * silent! loadview

" space open close fold
nnoremap <space> za
vnoremap <space> zf

" backspace died for some reason
set backspace=2

"refresh browse
map <leader>r :silent !xdotool search --class --onlyvisible chromium key ctrl+r<CR>

"directory for *swp files
set directory=~/.vim/swap,.
