#!/bin/bash

# save current dir and move to home
BASEDIR=$(dirname $0)
cd ~

# symlink .bash_profile to home (dup .bashrc)
ln -sf $BASEDIR/.bash_profile .bash_profile
ln -sf .bash_profile .bashrc

# symlink .colordiff
ln -sf $BASEDIR/.colordiffrc .colordiffrc

# copy .gitconfig (may contain personal info, so, do not symlink)
cp $BASEDIR/.gitconfig .gitconfig

# feedback
echo "Done."