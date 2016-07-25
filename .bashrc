# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

export AFSHOME=/afs/cern.ch/user/v/vavolkl

# Uncomment the following line if you don't like systemctl's auto-paging feature:
# export SYSTEMD_PAGER=

# User specific aliases and functions

### intel mkl
#source /opt/intel/mkl/bin/mklvars.sh intel64
#source /opt/intel/bin/iccvars.sh intel64
#export F95ROOT=/opt/intel/mkl
#export C_INCLUDE_PATH=$C_INCLUDE_PATH:/usr/lib64/python2.7/site-packages/numpy/core/include/
#alias lgfortran='gfortran  ${F95ROOT}/lib/intel64/libmkl_blas95_lp64.a -Wl,--no-as-needed -L${MKLROOT}/lib/intel64 -lmkl_gf_lp64 -lmkl_core -lmkl_sequential -lpthread -lm  -I${F95ROOT}/include/intel64/lp64 -m64 -I${MKLROOT}/include'

### alps library
#export PATH=$HOME/soft/bin:/opt/alps/bin:$PATH

#export ROOTSYS=/opt/hep
#export PATH=$ROOTSYS/bin:$PATH
#export C_INCLUDE_PATH=$C_INCLUDE_PATH:$ROOTSYS/include/root
#export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:$ROOTSYS/lib
#export PYTHONPATH=$PYTHONPATH:/opt/hep/lib/root
#export PYTHONPATH=$PYTHONPATH:$ROOTSYS/python

# thesis stuff
export PYTHONPATH=$HOME/tebdmaster/lib/python/:$PYTHONPATH
#export THESIS=$HOME/Dropbox/master-thesis
export tlib=$HOME/tebdmaster/lib/python
#export CP=$THESIS/bin/TEBDnew/XXZDiss
#export RTHESIS=/net/mungo3/csak4665/tebdmaster
#export RHOME=/net/mungo3/csak4665
#export HOME2=$HOME/cluster.archive
#alias downrsync='rsync -av -e ssh csak4665@quaxo:${PWD/$HOME2/$RHOME}/ $PWD/'
#alias uprsync='rsync -av $PWD/ csak4665@hbar:${PWD/$THESIS/$RTHESIS}/ '

# ubuntu terminal colors fix
if [ -n "$DISPLAY" -a "$TERM" == "xterm" ]; then
    export TERM=xterm-256color
fi
if [[ $HOSTNAME == *"lxplus"* ]]
then
  export PS1="\[\e[32;40m\][\u@\h \W]\$\[\033[m\]"
else
  export PS1="\[\e[33;40m\][\u@\h \W]\$\[\033[m\]"
fi
# bash convenience
export HISTCONTROL=ignoreboth:erasedups
export HISTFILESIZE=1000000
if [ -n `command -v gvim` ]; then
    alias vim='gvim -v'
fi
set -o emacs
bind '"\e[A": history-search-backward'
bind '"\e[B": history-search-forward'
alias xclip="xclip -selection c"

# git stuff
unset SSH_ASKPASS
export SVN_EDITOR=vim
export EDITOR=vim

# disable capslock without disabling capslock key
setxkbmap -option 'caps:none'
xmodmap -e 'keycode 66=Escape'

function ct {
IN=$PWD

arr=$(echo $IN | tr "/" "\n")

for x in $arr
do
    if [ -d "${PWD/$x/$1}" ]; then
    # Control will enter here if $DIRECTORY exists.
    cd  ${PWD/$x/$1}
    echo $PWD 
    break
    #else
    #echo 'no such directory'
    fi
    #echo "> [$x]"
done
}


_ct() 
{
    local cur prev opts
    COMPREPLY=()
    cur="${COMP_WORDS[COMP_CWORD]}"
    prev="${COMP_WORDS[COMP_CWORD-1]}"
    opts="--help --verbose --version"

    if [[ ${cur} == -* ]] ; then
        COMPREPLY=( $(compgen -W "${opts}" -- ${cur}) )
        return 0
    else 
        arr=$(echo $PWD | tr "/" "\n")
        opts1=''
        path1='/'
        for x in $arr
        do
            opts1="$opts1 `ls $path1`"
            path1=$path1$x'/'
            
            #echo $opts1
        done
        COMPREPLY=( $(compgen -W "${opts1}" -- ${cur}))
        return 0
    fi
}
complete -F _ct ct

. ~/.dotfiles/git-completion.bash

. ~/.dotfiles/git-prompt.sh
export GIT_PS1_SHOWDIRTYSTATE=1
export PS1='\w$(__git_ps1 " (%s)")\$ '

alias go='git checkout '
