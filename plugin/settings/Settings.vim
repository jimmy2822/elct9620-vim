set spell
set nocompatible
set nostartofline
set backspace=2
set history=1000
set undolevels=100
set ruler
set autoread
set nowrap
set linebreak
set nolist
set hidden
set linespace=0
set cursorline
set nofoldenable
set number
set numberwidth=4
set title
set showmode
set nobomb
set laststatus=2
"if $TMUX == ''
  set clipboard+=unnamed
"endif
set splitright
set splitbelow
set scrolloff=5
set switchbuf=useopen
set showtabline=2
set wildmode=longest,list
set wildmenu
set key=
set synmaxcol=512
set viminfo=
set ttyfast

filetype on
filetype indent on
filetype plugin on

syntax on
set hlsearch
set incsearch
set t_Co=256
try
  let g:solarized_termcolors=256
  syntax enable
  set background=dark
  colorscheme solarized
catch
endtry

set nobackup
set noswapfile
set nowritebackup
set copyindent
set ignorecase
set smartcase
set smarttab
set expandtab
set softtabstop=2
set shiftwidth=2
set tabstop=2
set shortmess=I

set visualbell
set noerrorbells
set t_vb=
set tm=500

set re=1

set encoding=utf-8
set fileencodings=ucs-bom,utf-8,big5,euc-jp,gbk,euc-kr,utf-bom,iso8859-1,euc-jp,utf-16le,latin1
set fenc=utf-8 enc=utf-8 tenc=utf-8
scriptencoding utf-8

" ignores
set wildignore+=*.o,*.obj,*.pyc                " output objects
set wildignore+=*.png,*.jpg,*.gif,*.ico        " image format
set wildignore+=*.swf,*.fla                    " image format
set wildignore+=*.mp3,*.mp4,*.avi,*.mkv        " media format
set wildignore+=*.git*,*.hg*,*.svn*            " version control system
set wildignore+=*sass-cache*
set wildignore+=*.DS_Store
set wildignore+=log/**
set wildignore+=tmp/**

autocmd WinEnter * setlocal cursorline
autocmd WinLeave * setlocal nocursorline

autocmd BufWritePre * :%s/\s\+$//e

map <Leader><Leader> <Leader>c<space>

noremap <F7> gT
noremap <F8> gt
noremap <S-h> gT
noremap <S-l> gt

nmap <TAB> v>
nmap <S-TAB> v<
vmap <TAB> >gv
vmap <S-TAB> <gv

map 0 ^

cnoremap %% <C-R>=expand('%:h').'/'<CR>

nmap <leader>v :tabe $MYVIMRC<CR>
map <leader>0 :topleft 100 :split README.md<CR>
