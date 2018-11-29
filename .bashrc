alias d='docker'
alias dc='docker-compose'

alias c='clear'
alias e='exit'
alias ls='ls -G'
alias ll='ls -lG'
alias la='ls -laG'
alias home='cd $HOME'
alias vin='nvim'

alias ga='git add -A'
alias gm='git commit -m '
alias gs='git status'
alias gc='git checkout'
alias gb='git branch'

alias rs='rails s'
alias rc='rails console'
alias be='bundle exec'

source ~/.path
source /usr/local/etc/bash_completion.d/git-prompt.sh
source /usr/local/etc/bash_completion.d/git-completion.bash
GIT_PS1_SHOWDIRTYSTATE=true
export PS1='\033[37m\][\t]\033[00m\]@\h \[\033[36m\]\W\033[31m\]$(__git_ps1)\[\033[00m\]\$ '
