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
# Yarn.
# --------------------------------------------------------------

if test -e $HOME/.config/yarn/global/node_modules/.bin
  set PATH $HOME/.config/yarn/global/node_modules/.bin $PATH

  # The bin command is not returning the correct value currently.
  # Should be fix later with a new version of Yarn.
  # set PATH (yarn global bin) $PATH
end

# --------------------------------------------------------------
# cheat
# --------------------------------------------------------------

set -x CHEATCOLORS true

# --------------------------------------------------------------
# Fisherman.
# --------------------------------------------------------------

# From: https://github.com/fisherman/fisherman/issues/340

# Move fisherman {functions,completions,conf.d} to another folder.
# ie., a folder inside the `fisherman` config folder, named `fish`
# like our custom fish folder (where this config is).
set -U fish_path $HOME/.config/fisher

# Add functions and completions to the builtin fish variables.
# **Warning**: we add them **at the end**, otherwise they will
# take precedence on our custom functions and completions.
set fish_function_path $fish_function_path $fish_path/functions
set fish_complete_path $fish_complete_path $fish_path/completions

# And source the conf.d files.
for file in $fish_path/conf.d/*.fish
  source $file
end

# --------------------------------------------------------------
# Alias.
# --------------------------------------------------------------

alias h "cd ~"
alias f "cd ~/Code/dotfiles"
alias c "cd ~/Code/"
alias d "cd ~/Desktop/"

# --------------------------------------------------------------
# iTerm shell integration.
# --------------------------------------------------------------

test -e {$HOME}/.iterm2_shell_integration.fish ; and source {$HOME}/.iterm2_shell_integration.fish
