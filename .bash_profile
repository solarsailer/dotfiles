######################################
# functions                          #
######################################

# Git branch in prompt
parse_git_branch() {
  git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}

######################################
# base                               #
######################################

# colors
export CLICOLOR=1
export LSCOLORS=GxFxCxDxBxegedabagaced
export GREP_OPTIONS='--color=auto'

# secure file management
alias rm='rm -i'
alias cp='cp -i'
alias mv='mv -i'

# ls
alias la='ls -a'
alias ll='ls -1'
alias lla='ls -1a'

# old: name@hostname ~ $
# export PS1='\[\033[01;32m\]\u@\h\[\033[01;34m\] \w \$\[\033[00m\] '

# new: [bright green](name@hostname) [bright blue](~) [bright yellow](branch) [bright purple]$
export PS1="\[\033[01;32m\]\u@\h\[\033[01;34m\] \w\[\033[01;33m\]\$(parse_git_branch) \[\033[01;35m\]\$\[\033[00m\] "

# PATH
export PATH=/bin
export PATH=/sbin:$PATH
export PATH=/usr/bin:$PATH
export PATH=/usr/sbin:$PATH
export PATH=/usr/local/bin:$PATH
export PATH=/usr/local/sbin:$PATH

# Editor
export EDITOR=nano

######################################
# mac                                #
######################################

######################################
# git                                #
######################################

######################################
# ruby                               #
######################################

# Set rbenv
eval "$(rbenv init -)"

######################################
# tools (auto-generated)             #
######################################
