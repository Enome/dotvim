" Pathogen
filetype off
call pathogen#runtime_append_all_bundles()

"Set line numbers
set number

set t_Co=256
set background=dark
colorscheme wombat256mod

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

" ignore pyc and node_modules
set wildignore=*.pyc ",node_modules
let g:ctrlp_custom_ignore = 'node_modules'

" remember folds 
au BufWinLeave * silent! mkview
au BufWinEnter * silent! loadview

" space open close fold
nnoremap <space> za
vnoremap <space> zf

" backspace died for some reason
set backspace=2

"refresh browse
map <leader>r :!xdotool search --class --onlyvisible chromium key r<CR>

" cut it out with the swp files already
set noswapfile


"disable jslint highlighting
"let g:JSLintHighlightErrorLine = 0

"Error highlight
hi clear SpellBad
hi SpellBad cterm=underline

"Search Highlight
hi clear Search
hi Search cterm=underline ctermbg=black

"Jump to search
set incsearch

" Turn off auto comments
set formatoptions-=r
