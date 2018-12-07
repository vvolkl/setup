
export ZSH=$HOME/setup/.oh-my-zsh

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

# bind UP and DOWN arrow keys

#source $ZSH/plugins/history-substring-search/zsh-syntax-highlighting.zsh
source $ZSH/plugins/history-substring-search/history-substring-search.zsh

zmodload zsh/terminfo
bindkey "$terminfo[kcuu1]" history-substring-search-up
bindkey "$terminfo[kcud1]" history-substring-search-down

bindkey "${terminfo[khome]}" beginning-of-line
bindkey "${terminfo[kend]}" end-of-line
bindkey "${terminfo[kdch1]}" delete-char

#
# # bind UP and DOWN arrow keys (compatibility fallback
# # for Ubuntu 12.04, Fedora 21, and MacOSX 10.9 users)
# bindkey '^[[A' history-substring-search-up
# bindkey '^[[B' history-substring-search-down
#
# # bind P and N for EMACS mode
# bindkey -M emacs '^P' history-substring-search-up
# bindkey -M emacs '^N' history-substring-search-down
#
# # bind k and j for VI mode
bindkey -M vicmd 'k' history-substring-search-up
bindkey -M vicmd 'j' history-substring-search-down

# key bindings
# bindkey "e[1~" beginning-of-line
# bindkey "e[4~" end-of-line
# bindkey "e[5~" beginning-of-history
# bindkey "e[6~" end-of-history
# bindkey "e[3~" delete-char
# bindkey "e[2~" quoted-insert
# bindkey "e[5C" forward-word
# bindkey "eOc" emacs-forward-word
# bindkey "e[5D" backward-word
# bindkey "eOd" emacs-backward-word
# bindkey "ee[C" forward-word
# bindkey "ee[D" backward-word
# bindkey "^H" backward-delete-word
# # for rxvt
# bindkey "e[8~" end-of-line
# bindkey "e[7~" beginning-of-line
# # for non RH/Debian xterm, can't hurt for RH/DEbian xterm
# bindkey "eOH" beginning-of-line
# bindkey "eOF" end-of-line
# # for freebsd console
# bindkey "e[H" beginning-of-line
# bindkey "e[F" end-of-line
# # completion in the middle of a line
# bindkey '^i' expand-or-complete-prefix
#

zle -N history-beginning-search-backward-end history-search-end
zle -N history-beginning-search-forward-end history-search-end

#bindkey "\e[A" history-beginning-search-backward-end
#bindkey "\e[B" history-beginning-search-forward-end 

export AFSHOME=/afs/cern.ch/user/v/vavolkl

#export ZSH_THEME="agnoster"


# git stuff
unset SSH_ASKPASS
export SVN_EDITOR=vim
export EDITOR=vim

#launch vim on typing filename
alias -s txt=vim h=vim cxx=vim py=vim cpp=vim C=vim c=vim hh=vim md=vim ipynb=vim

if [ -n `command -v gvim` ]; then
    alias vim='gvim -v'
fi


