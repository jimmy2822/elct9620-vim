" Aotoki's Vimrc
"
" Aotokitsuruya
" http://frost.tw
" elct9620@frost.tw


"runtime bundle/vim-pathogen/autoload/pathogen.vim
"filetype off
"call pathogen#incubate()
"filetype plugin indent on
"call pathogen#infect()
"call pathogen#helptags()

" Vundle
set nocompatible
filetype off

set rtp+=~bundle/vundle/
call vundle#rc()

" let Vundle manage Vundle
Bundle 'gmarik/vundle'

source Vundle

filetype plugin indent on

" hit enter to cancel searched highlight
noremap <CR> :nohlsearch<CR>
"
" select ALL
map <C-A> ggVG

"JSLint
map <C-J> :JSLint<CR>

"NeoComplCache
let g:neocomplcache_enable_at_startup = 1

"Copy to clipboard
vmap <C-b> :w !pbcopy<CR>
