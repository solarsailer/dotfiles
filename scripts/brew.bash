#!/usr/bin/env bash

# --------------------------------------------------------------
# Installation.
# --------------------------------------------------------------

echo "Brew> Installing…"

if which brew 2>/dev/null 1>/dev/null; then
  echo "Homebrew already installed."
else
  /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
  brew update
fi

# -------------------------------------------------------
# Brewing.
# -------------------------------------------------------

echo "Brew> Installing environments…"

brew install node
brew install yarn
brew install go
brew install mono

echo "Brew> Installing packages…"

# Latest version of git with HTML documentation.
brew install git
brew install github/gh/gh

brew install stow
brew install fish
brew install tmux

# Image.
brew install imagemagick
brew install gifsicle
brew install apngasm
brew install exiftool
brew install media-info

# Sound.
brew install lame

# Toolchain.
brew install cmake

# Swift.
brew install mxcl/made/swift-sh

# Ruby.
brew install rbenv
brew install ruby-build

# VCS, diff, merge.
brew install tig
brew install icdiff # better difftool
brew install diff-so-fancy # pretty diff

# Helpers.
brew install the_silver_searcher # ag — grep replacement
brew install sd # sed replacement
brew install jq # json processor
brew install pv # pipe viewer
brew install httpie # http
brew install pup # html processor
brew install fzf # fuzzy finder
brew install cloc
brew install tree # tree viewer
brew install trash
brew install ranger # file browser
brew install multimarkdown
brew install wakeonlan
brew install hub
brew install ccat # better cat
brew install bat # better cat
brew install cheat # cheatsheet manager
brew install youtube-dl
brew install dockutil
brew install heroku
brew install mas
brew install subliminal # Subtitles.
brew install platypus # CLI for creating mac apps from scripts
brew install nativefier # Convert website to native app
brew install watchman
brew install just # task runner, like make but better.
brew install awscli

# Databases.
brew install redis
brew install sqlite

# Kakoune
brew install kakoune

echo "Brew> Done."
