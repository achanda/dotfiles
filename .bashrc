export HISTSIZE=5000
source ~/.git-prompt.sh
PS1='[\u@\h \W$(__git_ps1 " (%s)")]\$ '
export GOROOT=/usr/local/go
export PATH=$PATH:/usr/local/bin:$GOROOT/bin
export EDITOR=vim
alias tmux="TERM=screen-256color-bce tmux"
alias ls='ls -G -la'
alias grep='grep -rn'
alias service='sudo service'
alias su='sudo su'
