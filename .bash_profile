# secure file management
alias rm='rm -i'
alias cp='cp -i'
alias mv='mv -i'

# ls
alias la='ls -a'
alias ll='ls -l'
alias lla='ls -la'

# name@hostname ~ $
export PS1='\[\033[01;32m\]\u@\h\[\033[01;34m\] \w \$\[\033[00m\] '

# PATH
export PATH=/bin
export PATH=/sbin:$PATH
export PATH=/usr/bin:$PATH
export PATH=/usr/sbin:$PATH
export PATH=/usr/local/bin:$PATH
export PATH=/usr/local/sbin:$PATH

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
