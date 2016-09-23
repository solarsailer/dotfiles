# Disable greeting.
set fish_greeting

# Set vim as default editor.
set --export EDITOR "vim"
set --export GIT_EDITOR "vim"

# Colors.
set --export CLICOLOR 1
set --export LSCOLORS GxFxCxDxBxegedabagaced

######################################
# Path
######################################

set PATH /bin
set PATH /sbin           $PATH
set PATH /usr/bin        $PATH
set PATH /usr/sbin       $PATH
set PATH /usr/local/bin  $PATH
set PATH /usr/local/sbin $PATH
set PATH ~/.bin          $PATH

######################################
# Go
######################################

set -x GOPATH $HOME/dev/go
set -x GOHOME $GOPATH/src/github.com/solarsailer
set    PATH   $GOPATH/bin       $PATH

######################################
# rbenv
######################################

set PATH $HOME/.rbenv/bin   $PATH
set PATH $HOME/.rbenv/shims $PATH
rbenv rehash >/dev/null ^&1

######################################
# cheat
######################################

set -x CHEATCOLORS true

######################################
# Alias.
######################################

alias h "cd ~"
alias l "cd ~/lib/dotfiles"
alias c "cd ~/dev/"
alias d "cd ~/Desktop/"
alias n "cd ~/Dropbox/Notes"

######################################
# iTerm shell integration.
######################################

test -e {$HOME}/.iterm2_shell_integration.fish ; and source {$HOME}/.iterm2_shell_integration.fish
