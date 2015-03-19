#!/bin/sh

echo "Installing Homebrew..."
if which brew 2>/dev/null 1>/dev/null; then
  echo "Homebrew already installed."
else
  ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"  
fi

# Init the dotfiles.
bash dotfiles.bash
