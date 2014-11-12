" Pathogen
filetype off " Pathogen needs to run before plugin indent on
call pathogen#infect()
call pathogen#helptags() " generate helptags for everything in 'runtimepath'
filetype plugin indent on

filetype plugin on
set number
syntax on
set noerrorbells visualbell t_vb=
autocmd GUIEnter * set visualbell t_vb=
set incsearch
au FocusLost * :wa

set background=dark
colorscheme vimbrant
highlight ColorColumn ctermbg=7
highlight ColorColumn guibg=Gray

set guifont=Monaco:h12
set guioptions-=T " Removes top toolbar
set guioptions-=r " Removes right hand scroll bar
set go-=L " Removes left hand scroll bar
"autocmd User Rails let b:surround_{char2nr('-')} = "<% \r %>" " displays <% %> correctly
:set cpoptions+=$ " puts a $ marker for the end of words/lines in cw/c$ commands
"defaults write org.vim.MacVim MMTextInsetTop ‘5’


set wrapscan
set infercase
set expandtab " tabs are spaces
set showmatch " highlight matching [{()}]
set hlsearch " highlight matches

set noswapfile
set nobackup
set nowritebackup

set enc=utf-8
set fenc=utf-8
set termencoding=utf-8
" disable vi compatibility (emulation of old bugs)
set nocompatible

" turn syntax highlighting on
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
set wildignore+=.hg,.git,.svn " Version control
set wildignore+=*.aux,*.out,*.toc " LaTeX intermediate files
set wildignore+=*.jpg,*.bmp,*.gif,*.png,*.jpeg " binary images
set wildignore+=*.o,*.obj,*.exe,*.dll,*.manifest " compiled object files
set wildignore+=*.pyc 

" Make sure Vim returns to the same line when you reopen a file.
augroup line_return
au!
au BufReadPost *
\ if line("'\"") > 0 && line("'\"") <= line("$") |
\ execute 'normal! g`"zvzz' |
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


let g:tagbar_usearrows = 1
nnoremap <leader>l :TagbarToggle<CR>

nnoremap <F2> :set invpaste paste?<CR>
set pastetoggle=<F2>
set showmode

"let g:syntastic_python_checkers=['flake8']
"let g:syntastic_python_checker_args='--ignore=E501,E225'

let g:pymode_indent = 1
let g:pymode_folding = 1
let g:pymode_motion = 1
let g:pymode_doc = 1
let g:pymode_doc_bind = 'K'
let g:pymode_run = 1
let g:pymode_run_bind = '<leader>r'
let g:pymode_lint_comment_symbol = 'CC'
let g:pymode_rope_completion = 1
let g:pymode_rope_complete_on_dot = 1
let g:pymode_rope_autoimport = 1
let g:pymode_syntax = 1
let g:pymode_rope_lookup_project = 0
