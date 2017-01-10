# Disable greeting.
set fish_greeting

# Set vim as default editor.
set --export EDITOR "vim"
set --export GIT_EDITOR "vim"

# Colors.
set --export CLICOLOR 1
set --export LSCOLORS GxFxCxDxBxegedabagaced

# --------------------------------------------------------------
# Path
# --------------------------------------------------------------

set PATH /bin
set PATH /sbin           $PATH
set PATH /usr/bin        $PATH
set PATH /usr/sbin       $PATH
set PATH /usr/local/bin  $PATH
set PATH /usr/local/sbin $PATH
set PATH ~/.bin          $PATH

# --------------------------------------------------------------
# Go
# --------------------------------------------------------------

if test -e $HOME/Code/go
  set -x GOPATH $HOME/Code/go
  set -x GOHOME $GOPATH/src/github.com/solarsailer

  # Add to path.
  set PATH $GOPATH/bin $PATH
end

# --------------------------------------------------------------
# Fastlane
# --------------------------------------------------------------

if test -e $HOME/.fastlane/bin
  set PATH $HOME/.fastlane/bin $PATH
end

# --------------------------------------------------------------
# rbenv
# --------------------------------------------------------------

if test -e $HOME/.rbenv/shims
  set PATH $HOME/.rbenv/shims $PATH
  rbenv rehash >/dev/null ^&1
end

# --------------------------------------------------------------
# cheat
# --------------------------------------------------------------

set -x CHEATCOLORS true

# --------------------------------------------------------------
# Alias.
# --------------------------------------------------------------

alias h "cd ~"
alias l "cd ~/Code/dotfiles"
alias c "cd ~/Code/"
alias d "cd ~/Desktop/"
alias n "cd ~/Dropbox/Notes"

# --------------------------------------------------------------
# iTerm shell integration.
# --------------------------------------------------------------

test -e {$HOME}/.iterm2_shell_integration.fish ; and source {$HOME}/.iterm2_shell_integration.fish
