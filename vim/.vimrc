" #################################################################################
" Base.
" #################################################################################

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

" ----------------------------- {
filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" ----------------------------- }

Plugin 'chriskempson/base16-vim'
Plugin 'Shougo/vimproc.vim'
Plugin 'bling/vim-airline'
"Plugin 'tpope/vim-vinegar'
"Plugin 'tpope/vim-dispatch'
"Plugin 'scrooloose/syntastic'
"Plugin 'scrooloose/nerdtree'
"Plugin 'kien/ctrlp.vim'
Plugin 'Valloric/YouCompleteMe'
"Plugin 'OmniSharp/omnisharp-vim'
Plugin 'Shougo/unite.vim'

"vim-repeat
"vim-surround

" ----------------------------- {
call vundle#end()
" ----------------------------- }

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

" #################################################################################
" UI.
" #################################################################################

" Show modes & commands.
set showmode
set showcmd

" Fast terminal - better redraw.
set ttyfast

" Show title.
set title

" Always wrap text.
set wrap

" Show line numbers.
set number

" Always show the status bar.
set laststatus=2

" Disable short message.
set shortmess+=I

" Color scheme
set background=dark
colorscheme base16-railscasts "heroku

" -------------------------------------------------------
" Tabs.
" -------------------------------------------------------

set tabstop=2
set shiftwidth=2
set softtabstop=2
set expandtab

" -------------------------------------------------------
" Cursors.
" -------------------------------------------------------

" Block cursor for normal/visual/command modes.
set guicursor=n-v-c:block-Cursor/lCursor

" Vertical cursor (20% width) for insert mode.
set guicursor+=i:ver20-Cursor/lCursor

" -------------------------------------------------------
" No awful audio bips.
" -------------------------------------------------------

set visualbell
set noerrorbells

" -------------------------------------------------------
" GUI.
" -------------------------------------------------------

if has('gui_running')
  " Font.
  set guifont=Menlo\ Regular\ for\ Powerline:h14

  " Hide toolbar.
  set go-=T

  " Hide left-hand scrollbar.
  set go-=l
  set go-=L

  " Hide right-hand scrollbar.
  set go-=r
  set go-=R
else

endif

" #################################################################################
" Behavior.
" #################################################################################

" Remove backup & swap files.
set nobackup
set noswapfile

" More undos & history.
set history=1000
set undolevels=1000

" #################################################################################
" Mappings.
" #################################################################################

" Remap `jk` to escape (to exit the Insert mode quickly).
inoremap jk <ESC>

" Change up/down to move one visual line at a time instead of one line text.
nnoremap j gj
nnoremap k gk

" -------------------------------------------------------
" Arrows.
" -------------------------------------------------------

" Disable arrows.
nnoremap <up> <nop>
nnoremap <down> <nop>
nnoremap <left> <nop>
nnoremap <right> <nop>
inoremap <up> <nop>
inoremap <down> <nop>
inoremap <left> <nop>
inoremap <right> <nop>

" -------------------------------------------------------
" Buffers.
" -------------------------------------------------------

" Use ctrl+tab & ctrl+shift+tab to cycle through buffers.
nnoremap <C-S-tab> :bp<CR>
nnoremap <C-tab>   :bn<CR>
inoremap <C-S-tab> <Esc>:bp<CR>i
inoremap <C-tab>   <Esc>:bn<CR>i

" #################################################################################
" Search.
" #################################################################################

" Case insensitive.
set ignorecase

" Ignore case, except if uppercase characters in the search.
set smartcase

" Highlight search.
set hlsearch

" Show search as you type.
set incsearch

" #################################################################################
" Whitespace normalization.
" #################################################################################

" Helper function.
function! Preserve(command)
  " Preparation: save last search, and cursor position.
  let _s=@/
  let l = line(".")
  let c = col(".")

  " Do the business:
  execute a:command

  " Clean up: restore previous search history, and cursor position.
  let @/=_s
  call cursor(l, c)
endfunction

" Automagically remove the trailing whitespaces after a save.
autocmd BufWritePre * :call Preserve("%s/\\s\\+$//e")

" #################################################################################
" Plugins.
" #################################################################################

" -------------------------------------------------------
" Airline.
" -------------------------------------------------------

" Use powerline patched fonts.
let g:airline_powerline_fonts = 1

" Disable the display mode of Vim since airline does it way better.
set noshowmode

" Layout {

  let g:airline#extensions#default#layout = [
      \ [ 'a', 'b', 'c' ],
      \ [ 'warning' ]
      \ ]
  let g:airline_section_c = ''

" }

" Tabline {

  " Show the buffer line when only one tab is used.
  let g:airline#extensions#tabline#enabled = 1

  " Change the separator for the tabline.
  let g:airline#extensions#tabline#left_alt_sep = '|'

  " Hide "buffers" in the right corner of the tabline.
  let g:airline#extensions#tabline#show_tab_type = 0

  " Show only the filename in the tabline.
  let g:airline#extensions#tabline#fnamemod = ':t'

" }

" Syntastic {

  let g:airline#extensions#syntastic#enabled = 1

" }

" -------------------------------------------------------
" Unite.
" -------------------------------------------------------

nnoremap <d-p> :Unite file_rec/async<cr>
