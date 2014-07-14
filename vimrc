" VI compatible

set nocompatible

" Auto-command

set modeline
set autoread

" Filetype

filetype plugin on
filetype indent on
syntax on

" Syntax Highlight

highlight Comment ctermbg=DarkMagenta ctermfg=DarkGray
highlight NonText ctermfg=DarkMagenta
highlight LineNr ctermfg=DarkGray

" Display

set showmode
set showcmd
set relativenumber
set number
set report=0
set ruler
set laststatus=2

" Scrolling

set sidescroll=1
set sidescrolloff=5

" Folding

set foldmethod=marker

" Tab

set expandtab
set softtabstop=2
set shiftwidth=2

" Wrap

set nowrap
set colorcolumn=73
set listchars+=precedes:<,extends:>
set showbreak=++++
set cpoptions+=n

" Spell

set spell

" Completion

set wildmode=longest:list
set complete=.
inoremap <C-L> <C-X><C-L>

" Case

"set ignorecase
"set smartcase
"set infercase

" Misc

set autoindent
set nostartofline
set backspace=indent,start
set shortmess=a
set whichwrap=

" Map

set notimeout
set ttimeout
set ttimeoutlen=10

nnoremap <Up> :<Up>
nnoremap <Down> /<Up>

inoremap <C-j> <ESC>/<++><CR>"_cf>
nnoremap <C-j> /<++><CR>"_cf>

inoremap <C-H> <C-G>u<C-H>

" Trailing Blank Check

autocmd BufWrite * %s/ \+$//e
