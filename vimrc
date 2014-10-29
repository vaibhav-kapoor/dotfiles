" Pathogen
filetype off " Pathogen needs to run before plugin indent on
call pathogen#infect()
call pathogen#helptags() " generate helptags for everything in 'runtimepath'

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" let Vundle manage Vundle
" " required! 
" Bundle 'gmarik/vundle'
filetype plugin indent on

filetype plugin on
set number

syntax on
set noerrorbells visualbell t_vb=
autocmd GUIEnter * set visualbell t_vb=
set incsearch
au FocusLost * :wa

set wrapscan
set infercase
set expandtab       " tabs are spaces
set showmatch           " highlight matching [{()}]
set hlsearch            " highlight matches

set enc=utf-8
set fenc=utf-8
set termencoding=utf-8
" disable vi compatibility (emulation of old bugs)
set nocompatible
" use indentation of previous line
" set autoindent
" use intelligent indentation for C
" set smartindent
" configure tabwidth and insert spaces instead of tabs
"set tabstop=4        " tab width is 4 spaces
"set shiftwidth=4     " indent also with 4 spaces
"set expandtab        " expand tabs to spaces
" wrap lines at 120 chars. 80 is somewaht antiquated with nowadays displays.
set textwidth=120
"  turn syntax highlighting on
set t_Co=256
syntax on

" intelligent comments
set comments=sl:/*,mb:\ *,elx:\ */


set modelines=0
set showmode
set showcmd
set hidden
set visualbell
set ttyfast
set ruler
set backspace=indent,eol,start
set nonumber
set norelativenumber
set laststatus=2
set history=1000
set undofile
set undoreload=10000
set list
set listchars=tab:▸\ ,eol:¬,extends:❯,precedes:❮
set lazyredraw
set matchtime=3
set showbreak=↪
set splitbelow
set splitright
set autowrite
set autoread
set shiftround
set title
set linebreak


"Don't try to highlight lines longer than 800 characters.
set synmaxcol=800

" Time out on key codes but not mappings.
" Basically this makes terminal Vim work sanely.
set notimeout
set ttimeout
set ttimeoutlen=10

" Make Vim able to edit crontab files again.
set backupskip=/tmp/*,/private/tmp/*"

" Better Completion
set complete=.,w,b,u,t
set completeopt=longest,menuone,preview

" Save when losing focus
au FocusLost * :silent! wall

" Resize splits when the window is resized
au VimResized * :wincmd =

set wildmenu
set wildmode=list:longest

set wildignore+=.hg,.git,.svn                    " Version control
set wildignore+=*.aux,*.out,*.toc                " LaTeX intermediate files
set wildignore+=*.jpg,*.bmp,*.gif,*.png,*.jpeg   " binary images
set wildignore+=*.o,*.obj,*.exe,*.dll,*.manifest " compiled object files
set wildignore+=*.pyc                            " Python byte code

" Make sure Vim returns to the same line when you reopen a file.
augroup line_return
    au!
        au BufReadPost *
                \ if line("'\"") > 0 && line("'\"") <= line("$") |
       \     execute 'normal! g`"zvzz' |
       \ endif
augroup END

set number
" Show nice info in ruler
set ruler
set laststatus=2 
inoremap jj <ESC>
let mapleader = "," 
"set cindent
"set expandtab
syntax match Tab /\t/
"hi Tab gui=underline guifg=blue ctermbg=blue 
nnoremap ; :
vmap Q gq
nmap Q gqap

" move vertically by visual line
nnoremap j gj
nnoremap k gk

set pastetoggle=<F2>

syntax on
set list listchars=tab:▷⋅,trail:⋅,nbsp:⋅
set statusline=%F%m%r%h%w\ [TYPE=%Y\ %{&ff}]\
                        \ [%l/%L\ (%p%%)
filetype plugin indent on
au FileType py set autoindent
au FileType py set smartindent
au FileType py set textwidth=79 " PEP-8 Friendly
