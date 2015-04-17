" -------------------------------------------------------
" Defaults.
" -------------------------------------------------------

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
