export HISTSIZE=5000
export GOROOT=/usr/local/go
export EDITOR=vim
export PATH=$PATH:/usr/local/bin:$GOROOT/bin
alias tmux="TERM=screen-256color-bce tmux"
alias ls='ls --color=always -la'
alias grep='grep -rn'

if [ -f ~/.git-prompt.sh ]; then
. ~/.git-prompt.sh
GIT_PS1_SHOWDIRTYSTATE=true
GIT_PS1_SHOWCOLORHINTS=true
GIT_PS1_UNTRACKEDFILES=true
PROMPT_COMMAND="__git_ps1 '\u@\h:\w' '\\$ '"
fi
