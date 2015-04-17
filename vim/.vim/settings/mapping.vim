" Mappings
" ########

" -------------------------------------------------------
" Base.
" -------------------------------------------------------

" Remap `jk` to escape (to exit the Insert mode quickly).
inoremap jk <ESC>

" Change up/down to move one visual line at a time instead of one line text.
nnoremap j gj
nnoremap k gk

" ------------------------------

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
