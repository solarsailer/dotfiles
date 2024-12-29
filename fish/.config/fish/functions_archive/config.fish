# --------------------------------------------------------------
# Colors.
# --------------------------------------------------------------

# NB: Those options seem useless nowadays, especially for Fish.

# Set colored outputs.
# - CLICOLOR tells macOS & BSD-based systems to use colors for some commands.
set --export CLICOLOR 1

# Set alternative LS colors.
# - LSCOLORS is for macOS & BSD-based systems.
# - LS_COLORS is for Linux-based systems.
# Use: https://geoff.greer.fm/lscolors/ to generate a pattern.
set --export LSCOLORS "GxFxCxDxBxegedabagaced"
set --export LS_COLORS "di=1;36:ln=1;35:so=1;32:pi=1;33:ex=1;31:bd=34;46:cd=34;43:su=30;41:sg=30;46:tw=30;42:ow=34;43"
