" Bare minimum .vimrc
" ###################

" Everything else is loaded from the `settings/` folder.

" ------------------------------

" Use Vim settings, rather than Vi settings.
" This must be first, because it changes other options as a side effect.
set nocompatible

" Disable modelines (exploits, not useful).
set modelines=0

" ------------------------------

" Force to bash (useful when using fish shell).
set shell=/bin/bash

" ------------------------------
 
" Switch syntax highlighting on.
syntax on
 
" Enable file type detection and do language-dependent indenting.
filetype plugin indent on

" ------------------------------

" Map leader to the space bar.
let mapleader=" "

" Make backspace behave in a sane manner.
set backspace=indent,eol,start
 
" Show line numbers.
set number
 
" Allow hidden buffers, don't limit to 1 file per window/split.
set hidden

" ------------------------------

" Change encoding.
set encoding=utf-8

" ------------------------------

" Tabs configuration.
set tabstop=2
set shiftwidth=2
set softtabstop=2
set expandtab

" ------------------------------

" Show modes & commands.
set showmode
set showcmd

" ------------------------------

" Load settings.
source ~/.vim/settings.vim
