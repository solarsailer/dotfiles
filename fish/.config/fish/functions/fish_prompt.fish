# Heavily inspired by `Pure` for zsh:
#   https://github.com/sindresorhus/pure
# And its port for fish:
#   https://github.com/rafaelrinaldi/pure

# New terminal window or tab! The shell is, by consequence, brand new.
set -g new_shell 1

function fish_prompt
  # Store the exit code right now: otherwise,
  # we will lose it during the prompt creation.
  set -g last_exit_code $status

  __prompt_sub
  __prompt_main

  # The session is not new anymore.
  set new_shell 0
end

# --------------------------------------------------------------
# Prompts.
# --------------------------------------------------------------

function __prompt_main
  set -l symbol_color purple

  if test $last_exit_code -ne 0
    set symbol_color red
  end

  set_color $symbol_color --bold
  echo -n '❯ '
  set_color normal
end

function __prompt_sub
  __show_newline

  __ssh

  set_color green --bold
  echo -n (__current_folder)
  set_color normal

  __space
  __git

  __newline
end

# --------------------------------------------------------------
# Helpers.
# --------------------------------------------------------------

# Show an empty line if:
# - the shell is not new (commands have already been executed before this one).
# AND
# - the previous command is not `clear`.
function __show_newline
  if test $new_shell -eq 0 -a $history[1] != 'clear'
    __newline
  end
end

# Get the current folder, and replace $HOME by a `~`. It's prettier.
function __current_folder
  pwd | sed "s|$HOME|~|"
end

# --------------------------------------------------------------
# SSH.
# --------------------------------------------------------------

function __ssh
  if not test -z $SSH_CLIENT
    set_color -o blue
    echo -n (whoami)"@"(hostname -s)' '
    set_color normal
  end
end

# --------------------------------------------------------------
# Git.
# --------------------------------------------------------------

function __git
  # Git is unavailable? Stop!
  if not which git > /dev/null
    return 1
  end

  # Not a repository? Stop!
  set -l is_git_repository (command git rev-parse --is-inside-work-tree 2> /dev/null)
  if test -z "$is_git_repository"
    return 1
  end

  __git_upstream
  __git_branch
  __git_dirty
end

# Branch.

function __git_branch
  set_color yellow --bold
  echo -n (__parse_git_branch)
  set_color normal
end

function __parse_git_branch
  git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/\1/'
end

# Upstream.

function __git_upstream
  set -l upstream (__parse_git_upstream)

  if test -n "$upstream"
    set_color 888
    echo -n $upstream
    set_color normal

    __space
  end
end

# Get the upstream state (if push/pull are required).
# Completely copied from:
# https://github.com/rafaelrinaldi/pure/blob/b301cc4b2e39cefae9c2ea5cdfd0ab96032e87bd/fish_prompt.fish#L83
function __parse_git_upstream
  # Check if there is an upstream configured.
  command git rev-parse --abbrev-ref '@{upstream}' &> /dev/null; and set -l has_upstream

  if set -q has_upstream
    set -l git_status (command git rev-list --left-right --count 'HEAD...@{upstream}' | sed "s/[[:blank:]]/ /" 2> /dev/null)

    # Resolve Git arrows by treating `git_status` as an array.
    set -l git_arrow_left (command echo $git_status | cut -c 1 2> /dev/null)
    set -l git_arrow_right (command echo $git_status | cut -c 3 2> /dev/null)

    # If arrow is not "0", it means it's dirty.
    if test $git_arrow_left != 0
      echo -n '⇡'
    end

    if test $git_arrow_right != 0
      echo -n '⇣'
    end
  end
end

# Dirty.

function __git_dirty
  # Dirty? It means that changes are present in the repository.
  set -l is_git_dirty (command git status --porcelain --ignore-submodules 2> /dev/null)

  if test -n "$is_git_dirty"
    echo -n '*'
  end
end

# --------------------------------------------------------------
# Presentation.
# --------------------------------------------------------------

function __space
  echo -n ' '
end

function __newline
  echo ''
end
