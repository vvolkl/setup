
export PATH=$PATH:$HOME/repo/pmu-tools
export PATH=$PATH:$HOME/repo/flamegraph

setxkbmap -option caps:escape
export EOSHOME=root://eosuser.cern.ch//eos/user/v/vavolkl/
export gh="https://github.com"
alias lxp='ssh -o StrictHostKeyChecking=no -o GSSAPIAuthentication=yes -o GSSAPITrustDNS=yes -o GSSAPIDelegateCredentials=yes vavolkl@lxplus.cern.ch'
export R=$HOME/repo
export FCCPLOTS=$HOME/Plots

alias root='root -l'
alias rootls='rootls -t'

export EOS_MGM_URL=root://eosuser.cern.ch

# Add the passed value only to path if it's not already in there.
function add_to_path {
    if [ -z "$1" ] || [[ "$1" == "/lib" ]]; then
        return
    fi
    path_name=${1}
    eval path_value=\$$path_name
    path_prefix=${2}
    case ":$path_value:" in
      *":$path_prefix:"*) :;;        # already there
      *) path_value=${path_prefix}:${path_value};; # or prepend path
    esac
    eval export ${path_name}=${path_value}
}


add_to_path PATH $HOME/.local/bin

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

export LS_OPTIONS='--color=auto'
eval "`dircolors`"
alias ls='ls $LS_OPTIONS'

export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:$ROOTSYS/lib
export LD_LIBRARY_PATH=/usr/local/lib:$LD_LIBRARY_PATH
export FCC_DETECTORS=/usr/local/
export FCCSWBASEDIR=/usr/local

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
export HISTFILESIZE=100000000
export HISTSIZE=100000
HISTCONTROL=ignoredups:erasedups
shopt -s histappend
PROMPT_COMMAND="history -n; history -w; history -c; history -r; $PROMPT_COMMAND"
#if [ -n `command -v gvim` ]; then
#    alias vim='gvim -v'
#fi
set -o emacs
bind '"\e[A": history-search-backward'
bind '"\e[B": history-search-forward'
alias xclip="xclip -selection c"

# git stuff
unset SSH_ASKPASS
export SVN_EDITOR=vim
export EDITOR=vim

# disable capslock without disabling capslock key
#setxkbmap -option 'caps:none'
#xmodmap -e 'keycode 66=Escape'

#function clean_typescript {
#  sed "s,\x1B\[[0-9;]*[a-zA-Z],,g" "$1" | col -bx  | less -R
#}

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

# set up git prompt and shortcuts
. ~/.dotfiles/git-completion.bash
. ~/.dotfiles/git-prompt.sh
export GIT_PS1_SHOWDIRTYSTATE=1
export PS1='\w$(__git_ps1 " (%s)")\$ '
alias go='git checkout '

alias g="grep -I -R --exclude-dir=build* --exclude-dir=install --exclude-dir=.git"

