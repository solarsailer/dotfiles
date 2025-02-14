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

# First: empty $PATH. Ensure that no unused directories are added.
set PATH

# Then, use `fish_add_path` with `--path` to directly update the $PATH variable in a clean way.
# `fish_add_path` ignores non-existing folder, so no need to test them beforehand.

fish_add_path --path /bin
fish_add_path --path /sbin
fish_add_path --path /usr/bin
fish_add_path --path /usr/sbin
fish_add_path --path /usr/local/bin
fish_add_path --path /usr/local/sbin
fish_add_path --path /opt/homebrew/bin
fish_add_path --path /opt/homebrew/sbin
fish_add_path --path ~/.bin
fish_add_path --path ~/.sbin

# ---------
# Dev envs.
# ---------

# Fastlane.
fish_add_path --path ~/.fastlane/bin

# Dotnet.
fish_add_path --path /usr/local/share/dotnet
fish_add_path --path ~/.dotnet/tools

# PHP.
fish_add_path --path ~/Library/Application\ Support/Herd/bin

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
# Abbrevations.
# --------------------------------------------------------------

# Replay last command.
function __last_history; echo $history[1]; end
abbr --add "!!" --position anywhere --function __last_history

# Print all arguments of the last command, except the command itself.
function __last_history_without_cmd; echo (string split ' ' -- $history[1])[2..-1]; end
abbr --add "@@" --position anywhere --function __last_history_without_cmd

# Print all arguments of the last command, and put the cursor at the beginning.
function __last_history_with_cmd_marker; echo "%" (string split ' ' -- $history[1])[2..-1]; end
abbr --add "??" --position anywhere --set-cursor --function __last_history_with_cmd_marker

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
