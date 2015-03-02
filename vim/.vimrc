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
" Cosmetic customizations
""""""""""""""""""""""""""

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

"""""""""
" Airline
"""""""""

let g:airline_powerline_fonts = 1
set noshowmode " disable mode when airline is on

"""""
" GUI
"""""

" GUI (MacVim especially)
if has('gui_running')
    " GUI Vim

    set guifont=Menlo\ Regular\ for\ Powerline:h14

    " Remove all the UI cruft
    set go-=T
    set go-=l
    set go-=L
    set go-=r
    set go-=R

    "highlight SpellBad term=underline gui=undercurl guisp=Orange

    " Different cursors for different modes.
    set guicursor=n-c:block-Cursor-blinkon0
    set guicursor+=v:block-vCursor-blinkon0
    set guicursor+=i-ci:ver20-iCursor

    if has("gui_macvim")
        " Full screen means FULL screen
        "set fuoptions=maxvert,maxhorz

        " Use the normal HIG movements, except for M-Up/Down
        "let macvim_skip_cmd_opt_movement = 1
        "no   <D-Left>       <Home>
        "no!  <D-Left>       <Home>
        "no   <M-Left>       <C-Left>
        "no!  <M-Left>       <C-Left>

        "no   <D-Right>      <End>
        "no!  <D-Right>      <End>
        "no   <M-Right>      <C-Right>
        "no!  <M-Right>      <C-Right>

        "no   <D-Up>         <C-Home>
        "ino  <D-Up>         <C-Home>
        "imap <M-Up>         <C-o>{

        "no   <D-Down>       <C-End>
        "ino  <D-Down>       <C-End>
        "imap <M-Down>       <C-o>}

        "imap <M-BS>         <C-w>
        "inoremap <D-BS>     <esc>my0c`y
    else
        " Non-MacVim GUI, like Gvim
    end
else
    " Console Vim
    " For me, this means iTerm2, possibly through tmux

    " Mouse support
    set mouse=a
endif

