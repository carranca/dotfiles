if [ -f ~/.bashrc ]; then
   source ~/.bashrc
fi

source ~/Projects/scripts/.git-completion.sh
source ~/Projects/scripts/.git-prompt.sh
alias flykite=~/Projects/scripts/fly.sh
alias tribe="cd ~/Projects/TribeHR/"
alias ios="cd ~/Projects/TribeHR-iOS/TribeHR\ iOS/"
alias tribeadmin="cd ~/Projects/TribeHRAdmin/"
alias downloads="cd ~/Downloads/"

#Prompt and prompt colors
# 30m - Black
# 31m - Red
# 32m - Green
# 33m - Yellow
# 34m - Blue
# 35m - Purple
# 36m - Cyan
# 37m - White
# 0 - Normal
# 1 - Bold
function prompt {
  local BLACK="\[\033[0;30m\]"
  local BLACKBOLD="\[\033[1;30m\]"
  local RED="\[\033[0;31m\]"
  local REDBOLD="\[\033[1;31m\]"
  local GREEN="\[\033[0;32m\]"
  local GREENBOLD="\[\033[1;32m\]"
  local YELLOW="\[\033[0;33m\]"
  local YELLOWBOLD="\[\033[1;33m\]"
  local BLUE="\[\033[0;34m\]"
  local BLUEBOLD="\[\033[1;34m\]"
  local PURPLE="\[\033[0;35m\]"
  local PURPLEBOLD="\[\033[1;35m\]"
  local CYAN="\[\033[0;36m\]"
  local CYANBOLD="\[\033[1;36m\]"
  local WHITE="\[\033[0;37m\]"
  local WHITEBOLD="\[\033[1;37m\]"
#export PS1="\[\033[36m\]\u\[\033[m\]@\[\033[32m\]\h:\[\033[33;1m\]\w\[\033[m\]\033[32m\]\$(parse_git_branch)\$ "
export PS1="\n$BLACKBOLD[\t]$GREENBOLD \u@\h\[\033[00m\]:$BLUEBOLD\W$GREEN\$(parse_git_branch)\[\033[00m\]\\$ "
}
prompt;

PROMPT_COMMAND='echo -ne "\033]0; ${PWD##*/}\007"'

export CLICOLOR=1
export LSCOLORS=ExFxBxDxCxegedabagacad
alias ls='ls -GFh'


#Git specific setup
git config --global color.ui auto
alias git=hub

parse_git_branch() {
    git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}

###############START --- ADDED BY TRIBEHR GIZMO install.sh --- START###############

PATH=$PATH:/Users/Admin/Projects/gizmo/bin
export PATH

GIZMODIR=/Users/Admin/Projects/gizmo
export GIZMODIR

#################END --- ADDED BY TRIBEHR GIZMO install.sh --- END#################
