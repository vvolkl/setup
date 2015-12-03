
export ZSH=$HOME/setup/.oh-my-zsh

export ZSH_THEME="robbyrussell"
source $ZSH/oh-my-zsh.sh

# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
setopt appendhistory autocd
unsetopt beep
bindkey -v
# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename '/home/vali/.zshrc'

autoload -Uz compinit
compinit
# End of lines added by compinstall
autoload -U history-search-end

zle -N history-beginning-search-backward-end history-search-end
zle -N history-beginning-search-forward-end history-search-end

bindkey "\e[A" history-beginning-search-backward-end
bindkey "\e[B" history-beginning-search-forward-end 

export AFSHOME=/afs/cern.ch/user/v/vavolkl

export ZSH_THEME="agnoster"


# git stuff
unset SSH_ASKPASS
export SVN_EDITOR=vim
export EDITOR=vim

alias -s txt=vim h=vim cxx=vim py=vim cpp=vim C=vim c=vim hh=vim md=vim ipynb=vim
