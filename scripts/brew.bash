#!/usr/bin/env bash

# --------------------------------------------------------------
# Installation.
# --------------------------------------------------------------

echo "Brew> Installing…"

if which brew 2>/dev/null 1>/dev/null; then
  echo "Homebrew already installed."
else
  /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
  brew update
fi

# -------------------------------------------------------
# Brewing.
# -------------------------------------------------------

echo "Brew> Installing essentials…"

brew install git # Latest version of git with HTML documentation.
brew install stow
brew install fish

echo "Brew> Installing environments…"

brew install node
brew install yarn
brew install go
brew install mas

echo "Brew> Installing packages…"

# CLI alternatives.
brew install the_silver_searcher # better grep
brew install sd                  # better sed
brew install bat                 # better cat
brew install exa                 # better ls
brew install fzf                 # fuzzy finder
brew install diff-so-fancy       # pretty diff
brew install fx                  # json processor

# Tools.
brew install trash               # better rm -rf that moves files to the real trash
brew install tig                 # visual git in shell
brew install tmux                # terminal splitter
brew install tree                # tree viewer
brew install gh                  # github command-line
brew install youtube-dl          # download video
brew install dockutil            # change the dock
brew install cloc                # count lines of code
brew install httpie              # http requester
brew install jq                  # json processor
brew install pup                 # html processor
brew install prettier            # code formatter
brew install multimarkdown       # markdown generator
brew install tldr                # better man pages
brew install cheat               # cheatsheet manager
brew install wakeonlan           # required for Alfred vnc workflow
brew install pipe-rename         # rename in batch

# Image.
brew install imagemagick
brew install gifsicle
brew install exiftool
brew install media-info
brew install apngasm

# Audio.
brew install lame

echo "Brew> Done."

# -------------------------------------------------------------
# Archive.
# -------------------------------------------------------------

# brew install awscli
# brew install redis
# brew install sqlite
# brew install mono

# brew install pv       # pipe viewer
# brew install up       # visual pipe helper
# brew install icdiff   # better difftool
# brew install just     # better make
# brew install ccat     # better cat
# brew install ripgrep  # better grep
# brew install duf      # better df/du
# brew install htop     # better top
# brew install hexyl    # hex viewer

# brew install ranger     # file browser
# brew install heroku
# brew install watchman
# brew install subliminal # subtitles
# brew install nativefier # convert website to native app
# brew install platypus   # CLI for creating mac apps from scripts

# brew install kakoune # better VIM

# brew install mxcl/made/swift-sh

# brew install rbenv
# brew install ruby-build
