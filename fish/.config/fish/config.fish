# Disable greeting.
set fish_greeting

# Set vim as default editor.
set --export EDITOR "vim"
set --export GIT_EDITOR "vim"

# Colors.
set --export CLICOLOR 1

# LSCOLORS is for BSD-based systems.
# LS_COLORS is for Linux-based systems.
# Use: https://geoff.greer.fm/lscolors/
set --export LSCOLORS "GxFxCxDxBxegedabagaced"
set --export LS_COLORS "di=1;36:ln=1;35:so=1;32:pi=1;33:ex=1;31:bd=34;46:cd=34;43:su=30;41:sg=30;46:tw=30;42:ow=34;43"

# --------------------------------------------------------------
# Path
# --------------------------------------------------------------

set PATH /bin
set PATH /sbin             $PATH
set PATH /usr/bin          $PATH
set PATH /usr/sbin         $PATH
set PATH /usr/local/bin    $PATH
set PATH /usr/local/sbin   $PATH
set PATH ~/.bin            $PATH
set PATH /opt/homebrew/bin $PATH

# Fastlane.
if test -e $HOME/.fastlane/bin
  set PATH $HOME/.fastlane/bin $PATH
end

# --------------------------------------------------------------
# Alias.
# --------------------------------------------------------------

alias tree "tree -C -I 'node_modules|bower_components'"

# The linux `paste` command is just a way to concat files together.
# Rename it, otherwise it's not clear at all on its purpose.
# `command` is a way to use the true `paste`, even if we alias `paste` below.
alias concat "command paste"

# `pbpaste` is an actual clipboard management utility.
# Use `paste` name (which is free now) for quick access.
alias paste "pbpaste"

# ls aliases.
alias la  "ls -a"  # Show invisibles.
alias ll  "ls -1"  # Show as list.
alias lla "ls -1a" # Show invisibles as list.

# ag aliases.
alias agi "ag -l -i" # Print files containing pattern.
alias agf "ag -g -i" # Find files matching pattern.

# --------------------------------------------------------------
# iTerm shell integration.
# --------------------------------------------------------------

test -e {$HOME}/.iterm2_shell_integration.fish ; and source {$HOME}/.iterm2_shell_integration.fish
