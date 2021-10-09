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
brew install mono

echo "Brew> Installing packages…"

# Tools.
brew install tmux

# Image.
brew install imagemagick
brew install gifsicle
brew install apngasm
brew install exiftool
brew install media-info

# Audio.
brew install lame

# Toolchain.
brew install cmake

# Languages.
#brew install mxcl/made/swift-sh
#brew install rbenv
#brew install ruby-build

# VCS, diff, merge.
brew install tig
brew install icdiff # better difftool
brew install diff-so-fancy # pretty diff

# Helpers.
brew install up # Visual pipe helper
brew install the_silver_searcher # ag — grep replacement
brew install sd # sed replacement
brew install jq # json processor
brew install pv # pipe viewer
brew install httpie # http
brew install pup # html processor
brew install fzf # fuzzy finder
brew install cloc
brew install trash
brew install multimarkdown
brew install wakeonlan
brew install github/gh/gh
brew install hub
brew install ccat # better cat
brew install bat # better cat
brew install cheat # cheatsheet manager
brew install youtube-dl
brew install dockutil
brew install mas
brew install awscli
brew install just # task runner, like make but better.
# brew install tree # tree viewer
# brew install ranger # file browser
# brew install heroku
# brew install watchman
# brew install nativefier # Convert website to native app
# brew install subliminal # Subtitles.
# brew install platypus # CLI for creating mac apps from scripts

# Databases.
brew install redis
brew install sqlite

# Kakoune
# brew install kakoune

echo "Brew> Done."
