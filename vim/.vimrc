" load vim plugins
if filereadable(expand('~/.vimrc.before'))
    source ~/.vimrc.before
endif

" vim instead of vi
set nocompatible

" case insensitive search
set ignorecase

" case sensitive when pattern has upper-case
set smartcase

" case sensitive when pattern has upper-case for insert-mode
set infercase

" characters to use on command completion
set listchars=tab:··,trail:-

" disable start of line
set nostartofline

" do not wrap around when searching
set nowrapscan

" number of lines around the cursor
set scrolloff=5
set sidescrolloff=5

" show menu for command completion
set wildmenu

" command completion mode with wildchar
set wildmode=list:longest,list:full

" ignore patterns on command completion
set wildignore=*~,*.bak,*.dll,*.exe,*.pyc,.DS_Store,.git,.svn
set wildignore+=*.gif,*.jpg,*.png
set wildignore+=*.rar,*.tar.bz2,*.tar.gz,*.tar.xz,*.zip
set wildignore+=*/.sass-cache/*,*/.vagrant/*,*/.idea/*

" program to use when using :grep
set grepprg=ag\ --smart-case\ --nogroup\ --column

" grep command output format
set grepformat=%f:%l:%c:%m

" detect file types, plugins and indent
filetype plugin indent on

" show ruler
set colorcolumn=120

" end-of-line character to use
set fileformats=unix,mac,dos

" vertical spaces between lines
set linespace=15

" show tabs visually
set list

" show line numbers
set number

" highlight current line
set cursorline

" highlight searches
set hlsearch

" highlight matches as you type
set incsearch

" highlight matching brackets
set showmatch

" enable syntax highlighting
syntax on

" do not unload buffers
set hidden

" colorscheme
colorscheme predawn

" number of colors
set t_Co=256

" fast terminal connection
set ttyfast

" visual bell
set visualbell

" enable the mouse
set mouse=a

" show status line
set laststatus=2

" threshold for reporting number lines changed
set report=0

" show cursor position
set ruler

" show commands being typed
set showcmd

" show current mode
set showmode

" operating system clipboard
set clipboard=unnamed

" allow backspace in insert mode
set backspace=indent,eol,start

" removes trailing whitespaces
autocmd BufWritePre * :%s/\s\+$//e

" auto indent on enter
set autoindent

" spaces instead of tabs
set expandtab

" do not wrap lines
set nowrap

" number of spaces for auto indent
set shiftwidth=4

" tabs in front of line inserts
set smarttab

" spaces per tab
set softtabstop=4
set tabstop=4

" enable folding
set nofoldenable

" fold based on indent
set foldmethod=indent

" faster way to escape current mode
imap jk <esc>

" map leader key
let mapleader=','

" toggle NERDTree sidebar
map <leader>b :NERDTreeToggle<CR>

" disable arrow keys
map <down> <nop>
map <left> <nop>
map <right> <nop>
map <up> <nop>

" window navigation
nmap <C-h> <C-w>h
nmap <C-j> <C-w>j
nmap <C-k> <C-w>k
nmap <C-l> <C-w>l

" faster way to quit a file
nmap <leader>q :q!<cr>

" faster way to save a file
nmap <leader>w :w!<cr>

" clear highlighted matches
nmap <silent> <leader>/ :nohlsearch<cr>

" split window in any of the four directions
nnoremap <leader>h :silent leftabove vs<cr>
nnoremap <leader>j :silent belowright sp<cr>
nnoremap <leader>k :silent aboveleft sp<cr>
nnoremap <leader>l :silent rightbelow vs<cr>

" change directory to current file
nnoremap ,cd :cd %:p:h<cr>:pwd<cr>

" grep word under cursor
nnoremap K :SG "\b<C-R><C-W>\b"<CR>:cw<CR>

" auto indent pasted text
nnoremap p p=`]<C-o>
nnoremap P P=`]<C-o>

" reload files outside vim
set autoread

" disable auto change directory
set noautochdir

" number of commands to remember
set history=1000

" disable swap files
set nobackup
set noswapfile

" undo directory path
set undodir=~/.vim/undo//
if !isdirectory(expand('~').'/.vim/undo')
    silent !mkdir ~/.vim/undo > /dev/null 2>&1
endif

" persistent undo history
set undofile

" run grep silently
command! -nargs=+ SG :silent! grep <args>

" text encoding
set encoding=utf-8

" load custom vim plugins config
if filereadable(expand('~/.vimrc.after'))
    source ~/.vimrc.after
endif

" default working directory
cd /Volumes/HD/Repos/
