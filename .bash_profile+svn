# secure file management
alias rm='rm -i'
alias cp='cp -i'
alias mv='mv -i'

# ls
alias la='ls -a'
alias ll='ls -l'
alias lla='ls -la'

# prompt
export PS1='\[\033[01;32m\]\u@\h\[\033[01;34m\] \w \$\[\033[00m\] '
export PATH=/usr/local/sbin:$PATH

# misc

# shortcut

# ssh-agent
#eval `ssh-agent -s`; ssh-add ~/.ssh/id_rsa

######################################
# mac                                #
######################################

# Quick way to rebuild the Launch Services database and get rid
# of duplicates in the Open With submenu.
# http://www.leancrew.com/all-this/2013/02/getting-rid-of-open-with-duplicates/
alias fixopenwith='/System/Library/Frameworks/CoreServices.framework/Frameworks/LaunchServices.framework/Support/lsregister -kill -r -domain local -domain system -domain user'

######################################
# svn                                #
######################################

# revert a folder recursively
alias svn-super-revert="svn revert . -R && svn st | grep ? | awk '{print $2}' | xargs rm -Rf"
alias stt="svn st --ignore-externals | egrep -v '^X'"
alias stc="svn st --ignore-externals | egrep '^!?\s*C'"
alias svnupi="svn up --ignore-externals"

# remove all the .svn folders in the current folder
alias svn-purge-current="find . -name '*.svn' | xargs rm -rf"
