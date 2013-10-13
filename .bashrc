export HISTSIZE=5000
export GOROOT=/usr/local/go
export PATH=$PATH:/usr/local/bin:$GOROOT/bin
alias vpn='./sshuttle -r abhishek@admin.lab.cloudscaling.com:3223 0/0'
alias tmux="TERM=screen-256color-bce tmux"
alias ls='ls -G -la'
alias grep='grep -rn'
alias methlab='ssh -A -p 3223 -l cloudscaling zm.meth.cloudscaling.com -i ~/.ssh/id_cloudscaling'
alias blab='ssh -A -p 3223 -l cloudscaling zm.blab.cloudscaling.com -i ~/.ssh/id_cloudscaling'
alias jlab='ssh -A -p 3223 -l cloudscaling zm.jlab.cloudscaling.com -i ~/.ssh/id_cloudscaling'

if [ -f ~/.git-prompt.sh ]; then
. ~/.git-prompt.sh
GIT_PS1_SHOWDIRTYSTATE=true
GIT_PS1_SHOWCOLORHINTS=true
GIT_PS1_UNTRACKEDFILES=true
PROMPT_COMMAND="__git_ps1 '\u@\h:\w' '\\$ '"
fi
