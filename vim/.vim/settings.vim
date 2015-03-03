" Taken from: https://github.com/skwp/dotfiles/blob/master/vim/settings.vim
" Load all the .vim files in the settings/ folder. 

for fpath in split(globpath('~/.vim/settings', '*.vim'), '\n')

  " Source the file.
  exe 'source' fpath
endfor
