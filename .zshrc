source ~/antigen.zsh
source ~/.karras_aliases.zsh
# Disable automatic terminal title setting. This messes up Tmux if it's on.
DISABLE_AUTO_TITLE="true"

ZSH_THEME=agnoster
export EDITOR=vim;
export GIT_EDITOR=vim;

# Display red dots while waiting for completion.
COMPLETION_WAITING_DOTS="true"

antigen use oh-my-zsh
antigen-bundle git
antigen-bundle git-extras
antigen-bundle capistrano
antigen-bundle composer
antigen-bundle phing
antigen-bundle symfony2
antigen-bundle symfony
antigen-bundle svn
antigen-bundle tmux
antigen-bundle debian
antigen-bundle supervisor
antigen-bundle svn
antigen-bundle command-not-found
antigen-bundle vagrant
antigen-bundle gem
antigen-bundle ruby
antigen-bundle rvm
antigen-bundle bundler
antigen-bundle brew

antigen-bundle zsh-users/zsh-syntax-highlighting

antigen-theme agnoster
antigen-apply

# Colored man pages (from https://wiki.archlinux.org/index.php/Man_Page#Colored_man_pages)
man() {
  env \
    LESS_TERMCAP_mb=$(printf "\e[1;31m") \
    LESS_TERMCAP_md=$(printf "\e[1;31m") \
    LESS_TERMCAP_me=$(printf "\e[0m") \
    LESS_TERMCAP_se=$(printf "\e[0m") \
    LESS_TERMCAP_so=$(printf "\e[1;47;34m") \
    LESS_TERMCAP_ue=$(printf "\e[0m") \
    LESS_TERMCAP_us=$(printf "\e[1;32m") \
      man "$@"
}

# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
setopt appendhistory notify
unsetopt autocd beep
bindkey -e
# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename '/Users/Admin/.zshrc'

autoload -Uz compinit
compinit
# End of lines added by compinstall

PATH=$PATH:/Users/Admin/Projects/gizmo/bin
export PATH

GIZMODIR=/Users/Admin/Projects/gizmo
export GIZMODIR

precmd () {
  tab_label=${PWD##*/} # use the last path component
  #tab_label=${PWD/${HOME}/\~} # use 'relative' path
  echo -ne "\e]2;${tab_label}\a" # set window title to full string
  echo -ne "\e]1;${tab_label: -24}\a" # set tab title to rightmost 24 characters
}
