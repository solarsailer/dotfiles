" ~/.vimrc

" Disable filetype before pathogen.
filetype off
filetype plugin indent off

" Pathogen.
execute pathogen#infect()

" Turn filetype detection, indent scripts and filetype plugins on
" and syntax highlighting too.
filetype plugin indent on
syntax on

" Remove Vim compatibility mode.
set nocompatible

" Disable modelines (because exploits)
set modelines=0

""""""""""""""""""""""""""
" Shell (to prevent bug with fish shell)
""""""""""""""""""""""""""

set shell=/bin/bash

""""""""""""""""""""""""""
" Cosmetic customizations
""""""""""""""""""""""""""

" Hide startup message.
" +=I add the I flag which disable the message.
set shortmess+=I

set background=dark
colorscheme tomorrow-night

" Tabs.
set tabstop=2
set shiftwidth=2
set softtabstop=2
set expandtab

" Wrapping.
set wrap
set textwidth=100
set formatoptions=qrn1

" Do not show a color column.
"set colorcolumn=100

" Sane vim (thanks steve losh).
set encoding=utf-8
set scrolloff=3
set autoindent
set showmode
set showcmd
set hidden
set wildmenu
set wildmode=list:longest
set visualbell
set cursorline
set ttyfast
set ruler
set backspace=indent,eol,start
set laststatus=2
set relativenumber
set undofile

"""""""""""
" Bindings.
"""""""""""

" Disable arrows.
nnoremap <up> <nop>
nnoremap <down> <nop>
nnoremap <left> <nop>
nnoremap <right> <nop>
inoremap <up> <nop>
inoremap <down> <nop>
inoremap <left> <nop>
inoremap <right> <nop>

" Change up/down to move one visual line at a time instead of one line text.
nnoremap j gj
nnoremap k gk

" Remap `jk` to escape to exit the Insert mode quickly.
inoremap jk <ESC>

"""""""""""""
" Leader key.
"""""""""""""

" change the mapleader from \ to ,
let mapleader=","

""""""""""""""""""
" Leader bindings.
""""""""""""""""""

" Quickly edit/reload the vimrc file
nnoremap <silent> <leader>ev :e $MYVIMRC<CR>
nnoremap <silent> <leader>sv :so $MYVIMRC<CR>

" Search.
nnoremap / /\v
vnoremap / /\v
set ignorecase
set smartcase
set gdefault
set incsearch
set showmatch
set hlsearch
nnoremap <leader><space> :noh<cr>
nnoremap <tab> %
vnoremap <tab> %

" Load settings.
source ~/.vim/settings.vim
