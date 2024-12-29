# --------------------------------------------------------------
# General.
# --------------------------------------------------------------

# Disable greeting.
set fish_greeting

# Force language to English.
set --export LANG "en_US.UTF-8"

# Force nvim as default editor.
set --export EDITOR "nvim"
set --export GIT_EDITOR "nvim"

# --------------------------------------------------------------
# PATH.
# --------------------------------------------------------------

set PATH /bin
set PATH /sbin               $PATH
set PATH /usr/bin            $PATH
set PATH /usr/sbin           $PATH
set PATH /usr/local/bin      $PATH
set PATH /usr/local/sbin     $PATH
set PATH /opt/homebrew/bin   $PATH
set PATH /opt/homebrew/sbin  $PATH
set PATH ~/.bin              $PATH

# Fastlane.
if test -e $HOME/.fastlane/bin
  set PATH $HOME/.fastlane/bin $PATH
end

# Dotnet.
if test -e /usr/local/share/dotnet
  set PATH /usr/local/share/dotnet $PATH
  set PATH ~/.dotnet/tools         $PATH
end

# Herd.
if test -e $HOME/Library/Application\ Support/Herd/bin/
  set PATH $HOME/Library/Application\ Support/Herd/bin/ $PATH
end

# --------------------------------------------------------------
# Aliases.
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

test -e {$HOME}/.iterm2_shell_integration.fish; and source {$HOME}/.iterm2_shell_integration.fish

# --------------------------------------------------------------
# Prompt.
# --------------------------------------------------------------

# Use Starship prompt.
# https://starship.rs/
starship init fish | source

# We have disabled `add_newline` in Starship config because Starship cannot handle
# `clear` or `ctrl-l` correctly (ie. removing the preceding newline in those cases).
# See: https://github.com/starship/starship/issues/560
#
# This is hacky but it works well: add a newline after each exec, except when it's `clear`.
# With `add_newline` to `false`, `ctrl-l` works out of the box, so nothing to do in that case.
function hack_starship_add_newline --on-event fish_postexec
  if test "$argv[1]" != 'clear'; echo;  end
end
