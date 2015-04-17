"""""""""
" Airline
"""""""""

" Use powerline patched fonts.
let g:airline_powerline_fonts = 1

" -------------------------------------------------------
" Customizations.
" -------------------------------------------------------

let g:airline#extensions#default#layout = [
    \ [ 'a', 'b', 'c' ],
    \ [ 'warning' ]
    \ ]

let g:airline_section_c = ''

" -------------------------------------------------------
" Tabline.
" -------------------------------------------------------

" Show the buffer line when only one tab is used.
let g:airline#extensions#tabline#enabled = 1

" Change the separator for the tabline.
let g:airline#extensions#tabline#left_alt_sep = '|'

" Hide "buffers" in the right corner of the tabline.
let g:airline#extensions#tabline#show_tab_type = 0

" Show only the filename in the tabline.
let g:airline#extensions#tabline#fnamemod = ':t'

" -------------------------------------------------------
" Syntastic.
" -------------------------------------------------------

let g:airline#extensions#syntastic#enabled = 1

" -------------------------------------------------------
" Misc.
" -------------------------------------------------------

" Disable the display mode of Vim since airline does it way better.
set noshowmode
