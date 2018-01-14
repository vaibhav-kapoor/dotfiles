set nocompatible              " be iMproved, required
filetype off                  " required

"set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
Plugin 'Chiel92/vim-autoformat'
Plugin 'alessandroyorba/arcadia'
Plugin 'tpope/vim-fugitive'
Plugin 'chrishunt/color-schemes'

" All of your Plugins must be added before the following line

call vundle#end()            " required
filetype plugin indent on    " required
syntax enable           " enable syntax processing
set background=dark
colorscheme vimbrant
highlight ColorColumn ctermbg=7
highlight ColorColumn guibg=Gray
"colorscheme badwolf         " awesome colorscheme
"let g:arcadia_Sunset = 1
"colorscheme arcadia
nnoremap ; :
"set tabstop=4       " number of visual spaces per TAB
"set softtabstop=4   " number of spaces in tab when editing
set expandtab       " tabs are spaces
set number              " show line numbers
set showcmd             " show command in bottom bar
set cursorline          " highlight current line
filetype indent on      " load filetype-specific indent files
filetype plugin on
set autoindent
set shiftwidth=4
set smarttab
set softtabstop=4
set tabstop=4
set textwidth=80
set wildmenu            " visual autocomplete for command menu
set lazyredraw          " redraw only when we need to.
set showmatch           " highlight matching [{()}]
set incsearch           " search as characters are entered
set hlsearch            " highlight matches
" turn off search highlight
nnoremap <leader><space> :nohlsearch<CR>
set foldenable          " enable folding
set foldlevelstart=10   " open most folds by default
set foldnestmax=10      " 10 nested fold max
" space open/closes folds
nnoremap <space> za
set foldmethod=indent   " fold based on indent level
" move vertically by visual line
nnoremap j gj
nnoremap k gk
" move to beginning/end of line
nnoremap B ^
nnoremap E $

" $/^ doesn't do anything
nnoremap $ <nop>
nnoremap ^ <nop>


" highlight last inserted text
nnoremap gV `[v`]

let mapleader=","       " leader is comma
" jk is escape
inoremap jk <esc>
" save session
nnoremap <leader>s :mksession<CR>
set modelines=1
call pathogen#infect()                      " use pathogen

nnoremap <F2> :set invpaste paste?<CR>
set pastetoggle=<F2>
set showmode

set showbreak=↪

set noswapfile
set nobackup
set nowritebackup
set scrolloff=10
