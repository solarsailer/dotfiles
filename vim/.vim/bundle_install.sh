#!/usr/bin/env bash

SHELL=/bin/bash

cd ~/.vim
mkdir bundle

# Install Vundle.
git clone https://github.com/gmarik/Vundle.vim.git ~/.vim/bundle/Vundle.vim

# Install plugins.
vim +PluginInstall +qall

# Build vimproc.
pushd ~/.vim/bundle/vimproc.vim
make
popd

# Build YouCompleteMe.
pushd ~/.vim/bundle/YouCompleteMe
./install.sh --clang-completer --omnisharp-completer --gocode-completer
popd
