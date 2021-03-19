" Aotoki's Vimrc
"
" Aotokitsuruya
" http://frost.tw
" contact@frost.tw

" Vundle
" set nocompatible
" filetype off

" Install vim-plug if we don't already have it
if empty(glob("$HOME/.vim/autoload/plug.vim"))
    " Ensure all needed directories exist  (Thanks @kapadiamush)
    execute '!mkdir -p ~/.vim/plugged'
    execute '!mkdir -p ~/.vim/autoload'
    " Download the actual plugin manager
    execute '!curl -fLo ~/.vim/autoload/plug.vim https://raw.github.com/junegunn/vim-plug/master/plug.vim'
endif

" Load Plug
call plug#begin('~/.vim/plugged')
source $HOME/.vim/Plug
filetype plugin indent on
call plug#end()

" hit enter to cancel searched highlight
noremap <CR> :nohlsearch<CR>

" select ALL
map <C-A> ggVG

" Ruby
let g:rubycomplete_buffer_loading = 1

" JSON
let g:vim_json_syntax_conceal = 0

" PIV
let g:DisableAutoPHPFolding = 0
let g:PIVAutoClose = 0

" Copy to clipboard
vmap <C-b> :w !pbcopy<CR>

" JavaScript Libraries
let g:used_javascript_libs = "jquery,underscore,react,flux"

" C-H / C-[
inoremap <BS> <NOP>

" Wakatime
let g:wakatime_PythonBinary = '/usr/bin/python2.7'

" Fzf
set rtp+=/opt/homebrew/opt/fzf
map <C-C> :FZF<CR>
nmap \gg :Ag<CR>

" Use right python version for vim
let g:python3_host_prog=$HOME.'/.venv/bin/python3'
