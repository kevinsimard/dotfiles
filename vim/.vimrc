" ------------------------------------------------------------------------------
" -------------------------- Table of contents
" ------------------------------------------------------------------------------
" --------------------------  1 - Important
" --------------------------  2 - Moving around, searching and patterns
" --------------------------  3 - Tags
" --------------------------  4 - Displaying text
" --------------------------  5 - Syntax, highlighting and spelling
" --------------------------  6 - Multiple windows
" --------------------------  7 - Multiple tab pages
" --------------------------  8 - Terminal
" --------------------------  9 - Using the mouse
" -------------------------- 10 - Printing
" -------------------------- 11 - Messages and info
" -------------------------- 12 - Selecting text
" -------------------------- 13 - Editing text
" -------------------------- 14 - Tabs and indenting
" -------------------------- 15 - Folding
" -------------------------- 16 - Diff mode
" -------------------------- 17 - Mapping
" -------------------------- 18 - Reading and writing files
" -------------------------- 19 - The swap file
" -------------------------- 20 - Command line editing
" -------------------------- 21 - Executing external commands
" -------------------------- 22 - Running make and jumping to errors
" -------------------------- 23 - Language specific
" -------------------------- 24 - Multi-byte characters
" -------------------------- 25 - Various
" ------------------------------------------------------------------------------

" ------------------------------------------------------------------------------
" -------------------------- Important
" ------------------------------------------------------------------------------
" vim instead of vi
set nocompatible

" disable reading .vimrc file in current directory
set noexrc

" ------------------------------------------------------------------------------
" -------------------------- Moving around, searching and patterns
" ------------------------------------------------------------------------------
" case insensitive search
set ignorecase

" same as 'smartcase' but for insert-mode
set infercase

" disable start of line
set nostartofline

" do not wrap around when searching
set nowrapscan

" number of lines to show around the cursor
set scrolloff=5
set sidescrolloff=5

" case sensitive when pattern has upper-case
set smartcase

" show menu for command completion
set wildmenu

" command completion mode with 'wildchar'
set wildmode=list:longest,list:full

" ignore patterns on command completion
set wildignore=*~,*.bak,*.dll,*.exe,*.pyc,.DS_Store,.git,.svn
set wildignore+=*.gif,*.jpg,*.png
set wildignore+=*.rar,*.tar.bz2,*.tar.gz,*.tar.xz,*.zip
set wildignore+=*/.sass-cache/*,*/.vagrant/*
set wildignore+=bootstrap/cache/compiled.php

" ------------------------------------------------------------------------------
" -------------------------- Tags
" ------------------------------------------------------------------------------

" ------------------------------------------------------------------------------
" -------------------------- Displaying text
" ------------------------------------------------------------------------------
" show line numbers
set number

" ------------------------------------------------------------------------------
" -------------------------- Syntax, highlighting and spelling
" ------------------------------------------------------------------------------
" highlight searches
set hlsearch

" highlight matches as you type
set incsearch

" highlight matching brackets
set showmatch

" ------------------------------------------------------------------------------
" -------------------------- Multiple windows
" ------------------------------------------------------------------------------
" do not unload buffers
set hidden

" ------------------------------------------------------------------------------
" -------------------------- Multiple tab pages
" ------------------------------------------------------------------------------

" ------------------------------------------------------------------------------
" -------------------------- Terminal
" ------------------------------------------------------------------------------
" colorscheme
colorscheme predawn

" number of colors
set t_Co=256

" fast terminal connection
set ttyfast

" visual bell
set visualbell

" ------------------------------------------------------------------------------
" -------------------------- Using the mouse
" ------------------------------------------------------------------------------
" enable the mouse
set mouse=a

" ------------------------------------------------------------------------------
" -------------------------- Printing
" ------------------------------------------------------------------------------

" ------------------------------------------------------------------------------
" -------------------------- Messages and info
" ------------------------------------------------------------------------------
" show cursor position
set ruler

" show commands being typed
set showcmd

" show current mode
set showmode

" ------------------------------------------------------------------------------
" -------------------------- Selecting text
" ------------------------------------------------------------------------------
" operating system clipboard
set clipboard=unnamed

" ------------------------------------------------------------------------------
" -------------------------- Editing text
" ------------------------------------------------------------------------------
" allow backspace in insert mode
set backspace=indent,eol,start

" removes trailing whitespaces
autocmd BufWritePre * :%s/\s\+$//e

" ------------------------------------------------------------------------------
" -------------------------- Tabs and indenting
" ------------------------------------------------------------------------------
" auto indent on enter
set autoindent

" spaces instead of tabs
set expandtab

" do not wrap lines
set nowrap

" tabs in front of line inserts
set smarttab

" spaces per tab
set softtabstop=4
set tabstop=4

" ------------------------------------------------------------------------------
" -------------------------- Folding
" ------------------------------------------------------------------------------
" enable folding
set foldenable

" fold based on indent
set foldmethod=indent

" ------------------------------------------------------------------------------
" -------------------------- Diff mode
" ------------------------------------------------------------------------------

" ------------------------------------------------------------------------------
" -------------------------- Mapping
" ------------------------------------------------------------------------------
" map leader key
let mapleader=','

" disable arrow keys
map <down> <nop>
map <left> <nop>
map <right> <nop>
map <up> <nop>

" split window in any of the four directions
nnoremap <Leader>H :silent leftabove vs<cr>
nnoremap <Leader>J :silent belowright sp<cr>
nnoremap <Leader>K :silent aboveleft sp<cr>
nnoremap <Leader>L :silent rightbelow vs<cr>

" ------------------------------------------------------------------------------
" -------------------------- Reading and writing files
" ------------------------------------------------------------------------------
" reload files outside vim
set autoread

" disable auto change directory
set noautochdir

" ------------------------------------------------------------------------------
" -------------------------- The swap file
" ------------------------------------------------------------------------------
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

" ------------------------------------------------------------------------------
" -------------------------- Command line editing
" ------------------------------------------------------------------------------

" ------------------------------------------------------------------------------
" -------------------------- Executing external commands
" ------------------------------------------------------------------------------

" ------------------------------------------------------------------------------
" -------------------------- Running make and jumping to errors
" ------------------------------------------------------------------------------

" ------------------------------------------------------------------------------
" -------------------------- Language specific
" ------------------------------------------------------------------------------

" ------------------------------------------------------------------------------
" -------------------------- Multi-byte characters
" ------------------------------------------------------------------------------
" text encoding
set encoding=utf-8

" ------------------------------------------------------------------------------
" -------------------------- Various
" ------------------------------------------------------------------------------
