export HISTSIZE=5000
export EDITOR=vim
export GOROOT=/usr/local/go
export GOPATH="$HOME/workspace/go"
export PATH=$PATH:/usr/local/bin:$GOROOT/bin
alias tmux="TERM=screen-256color-bce tmux"
alias ls='ls -G -la'
alias grep='grep -rn'

if [ -f ~/.git-prompt.sh ]; then
. ~/.git-prompt.sh
GIT_PS1_SHOWDIRTYSTATE=true
GIT_PS1_SHOWCOLORHINTS=true
GIT_PS1_UNTRACKEDFILES=true
GIT_PS1_SHOWSTASHSTATE=true
GIT_PS1_SHOWUNTRACKEDFILES=true
GIT_PS1_SHOWUPSTREAM="auto"
PROMPT_COMMAND="__git_ps1 '\u@\h:\w' '\\$ '"
fi
source /usr/local/etc/bash_completion.d/git-completion.bash
man() {
    env \
    LESS_TERMCAP_mb=$(printf "\e[1;31m") \
    LESS_TERMCAP_md=$(printf "\e[1;31m") \
    LESS_TERMCAP_me=$(printf "\e[0m") \
    LESS_TERMCAP_se=$(printf "\e[0m") \
    LESS_TERMCAP_so=$(printf "\e[1;44;33m") \
    LESS_TERMCAP_ue=$(printf "\e[0m") \
    LESS_TERMCAP_us=$(printf "\e[1;32m") \
    man "$@"
}
if [ -f $(brew --prefix)/etc/bash_completion ]; then
  . $(brew --prefix)/etc/bash_completion
fi

export WORKON_HOME=$HOME/.virtualenvs
export PROJECT_HOME=$HOME/Devel
source /usr/local/bin/virtualenvwrapper.sh
