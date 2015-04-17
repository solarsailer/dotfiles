" Bare minimum .vimrc
" ###################

" Everything else is loaded from the `settings/` folder.

" -------------------------------------------------------
" Base.
" -------------------------------------------------------

" Use Vim settings, rather than Vi settings.
" This must be first, because it changes other options as a side effect.
set nocompatible

" Disable modelines (exploits, not useful).
set modelines=0

" Force to bash (useful when using fish shell).
set shell=/bin/bash

" -------------------------------------------------------
" Vundle.
" -------------------------------------------------------

filetype off 
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
source ~/.vim/plugins.vim
call vundle#end() 

" -------------------------------------------------------
" Highlighting.
" -------------------------------------------------------

" Switch syntax highlighting on.
syntax on
 
" Enable file type detection and do language-dependent indenting.
filetype plugin indent on

" -------------------------------------------------------
" Useful defaults.
" -------------------------------------------------------

" Map leader to the space bar.
let mapleader=" "

" Make backspace behave in a sane manner.
set backspace=indent,eol,start
 
" Allow hidden buffers, don't limit to 1 file per window/split.
set hidden

" Change encoding.
set encoding=utf-8

" -------------------------------------------------------
" Load settings.
" -------------------------------------------------------

source ~/.vim/settings.vim
