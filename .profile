
# MacPorts Installer addition on 2010-08-23_at_20:06:09: adding an appropriate PATH variable for use with MacPorts.
# export PATH=/opt/local/bin:/opt/local/sbin:$PATH
# Finished adapting your PATH environment variable for use with MacPorts.

export PATH=/usr/local/bin:$PATH:/Users/allportdc/bin:/usr/local/mysql/bin

export EDITOR="mate -w" 
export CVSEDITOR="mate -w" 
export SVN_EDITOR="mate -w"

alias mysql=/usr/local/mysql/bin/mysql
alias mysqladmin=/usr/local/mysql/bin/mysqladmin

[[ -s "$HOME/.rvm/scripts/rvm" ]] && . "$HOME/.rvm/scripts/rvm"  # This loads RVM into a shell session.

export DYLD_LIBRARY_PATH="/usr/local/mysql/lib:$DYLD_LIBRARY_PATH"
export NODE_PATH=/usr/local/lib/node_modules
export PATH=$PATH:/Applications/MacVim-snapshot-62

# added git-prompt
[[ $- == *i* ]]   &&   . ~/git-prompt/git-prompt.sh
