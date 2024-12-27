# -------------------------------------------------------------
# General.
# -------------------------------------------------------------

# Language.
export LANG=en_US.UTF-8

# Colors.
export CLICOLOR=1
export LSCOLORS=GxFxCxDxBxegedabagaced
export GREP_OPTIONS='--color=auto'

# -------------------------------------------------------------
# PATH.
# -------------------------------------------------------------

export PATH=/bin
export PATH=/sbin:$PATH
export PATH=/usr/bin:$PATH
export PATH=/usr/sbin:$PATH
export PATH=/usr/local/bin:$PATH
export PATH=/usr/local/sbin:$PATH
export PATH=/opt/homebrew/bin:$PATH

# -------------------------------------------------------------
# Aliases.
# -------------------------------------------------------------

# Secure file management.
alias rm='rm -i'
alias cp='cp -i'
alias mv='mv -i'

# Improved listings.
alias la='ls -a'
alias ll='ls -1'
alias lla='ls -1a'

# Helpers.
alias remove_ds_store='find . -name .DS_Store -print0 | xargs rm -v'

# -------------------------------------------------------------
# Prompt.
# -------------------------------------------------------------

# Use Starship as prompt.
eval "$(starship init bash)"
