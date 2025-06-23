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
brew install neovim
brew install starship

echo "Brew> Installing environments…"

brew install node
brew install yarn
brew install go
brew install mas

# Python.
brew install pyenv
brew install uv

echo "Brew> Installing packages…"

# Alternatives.
brew install the_silver_searcher # better grep
brew install ripgrep             # better grep
brew install sd                  # better sed
brew install bat                 # better cat
brew install eza                 # better ls
brew install fzf                 # fuzzy finder
brew install ast-grep            # code refactor
brew install diff-so-fancy       # pretty diff
brew install jq                  # JSON processor
brew install jless               # JSON viewer
brew install fx                  # JSON processor
brew install csvkit              # CSV toolkit
brew install miller              # CSV/JSON processor
brew install f2                  # batch rename
brew install fd                  # better find
brew install btop                # better top
brew install ncdu                # interactive disk usage viewer

# Apps.
brew install tig                 # visual git in shell
brew install tmux                # terminal splitter
brew install trash               # better rm -rf that moves files to the real trash
brew install tree                # tree viewer
brew install yt-dlp              # download video - the new youtube-dl
brew install dockutil            # change the dock
brew install tldr                # better man pages
brew install cheat               # cheatsheet manager

# Processors.
brew install httpie              # http requester

brew install nmap                # network
brew install nuclei              # security scanner

brew install multimarkdown       # markdown generator

# Utilities.
brew install gh                  # github command-line
brew install cloc                # count lines of code
brew install prettier            # code formatter
brew install pipe-rename         # rename in batch
brew install gum                 # CLI utilities (write, prompt, confirm, etc.)
brew install wakeonlan           # required for Alfred vnc workflow
brew install openconnect         # vpn
brew install osquery             # query OS as database

# Images.
brew install imagemagick
brew install gifsicle
brew install exiftool
brew install media-info
brew install apngasm

# Audio.
brew install lame

echo "Brew> Done."

# --------------------------------------------------------------
# Optional.
# --------------------------------------------------------------

brew install llm
brew install ollama

# -------------------------------------------------------------
# Archive.
# -------------------------------------------------------------

# Automation
# brew install platypus   # CLI for creating mac apps from scripts

# brew install awscli
# brew install redis
# brew install sqlite
# brew install mono

# brew install yazi     # rust-based file browser

# brew install pv       # pipe viewer
# brew install up       # visual pipe helper
# brew install icdiff   # better difftool
# brew install just     # better make
# brew install ccat     # better cat
# brew install duf      # better df/du
# brew install htop     # better top
# brew install hexyl    # hex viewer
# brew install pup      # html processor
# brew install rclone   # cloud storage cloner
# brew install pdfgrep  # like grep but for PDFs

# brew install watchman
# brew install subliminal # subtitles

# brew install kakoune # better VIM
# brew install helix   # better VIM

# brew install mxcl/made/swift-sh

# brew install rbenv
# brew install ruby-build
