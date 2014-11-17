" Pathogen
filetype off " Pathogen needs to run before plugin indent on
call pathogen#infect()
call pathogen#helptags() " generate helptags for everything in 'runtimepath'
filetype plugin indent on

" General
set number	" Show line numbers
set linebreak	" Break lines at word (requires Wrap lines)
set showbreak=+++ 	" Wrap-broken line prefix
set textwidth=100	" Line wrap (number of cols)
set showmatch	" Highlight matching brace
set visualbell	" Use visual bell (no beeping)
 
set hlsearch	" Highlight all search results
set smartcase	" Enable smart-case search
set ignorecase	" Always case-insensitive
set incsearch	" Searches for strings incrementally
 
set autoindent	" Auto-indent new lines
set shiftwidth=4	" Number of auto-indent spaces
set smartindent	" Enable smart-indent
set smarttab	" Enable smart-tabs
set softtabstop=4	" Number of spaces per Tab
 
" Advanced
set ruler	" Show row and column ruler information
 
set undolevels=1000	" Number of undo levels
set backspace=indent,eol,start	" Backspace behaviour

syntax on
set noerrorbells visualbell t_vb=
autocmd GUIEnter * set visualbell t_vb=
au FocusLost * :wa


" Visual
set background=dark
colorscheme vimbrant
highlight ColorColumn ctermbg=7
highlight ColorColumn guibg=Gray

set guifont=Monaco:h12
set guioptions-=T " Removes top toolbar
set guioptions-=r " Removes right hand scroll bar

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

set backspace=indent,eol,start
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

nnoremap <F2> :set invpaste paste?<CR>
set pastetoggle=<F2>

let mapleader = ","
"nnoremap ; :
nnoremap ; :


vmap Q gq
nmap Q gqap
" move vertically by visual line
nnoremap j gj
nnoremap k gk

noremap <C-j> <C-w>j
noremap <C-k> <C-w>k
noremap <C-l> <C-w>l
noremap <C-h> <C-w>h

autocmd BufWritePre *.py :%s/\s\+$//e

noremap <F3> :Autoformat<CR><CR>

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

let g:splitjoin_split_mapping = ''
let g:splitjoin_join_mapping = ''

nmap <Leader>j :SplitjoinJoin<cr>
nmap <Leader>s :SplitjoinSplit<cr>

nnoremap <F4> :TagbarToggle<cr>
