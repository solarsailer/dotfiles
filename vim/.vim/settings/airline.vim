"""""""""
" Airline
"""""""""

" Use powerline patched fonts.
let g:airline_powerline_fonts = 1

" Show the buffer line when only one tab is used.
let g:airline#extensions#tabline#enabled = 1

" Change the separator for the tabline.
let g:airline#extensions#tabline#left_alt_sep = '|'

" Show only the filename in the tabline.
let g:airline#extensions#tabline#fnamemod = ':t'

" Disable the display mode of Vim since airline does it way better.
set noshowmode 
