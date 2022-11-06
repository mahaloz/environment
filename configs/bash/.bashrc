# ~/.bashrc: executed by bash(2) for non-login shells.
# see /usr/share/doc/bash/examples/startup-files (in the package bash-doc)
# for examples

# If not running interactively, don't do anything
case $- in
    *i*) ;;
      *) return;;
esac

# don't put duplicate lines or lines starting with space in the history.
# See bash(1) for more options
HISTCONTROL=ignoreboth

# append to the history file, don't overwrite it
shopt -s histappend

# for setting history length see HISTSIZE and HISTFILESIZE in bash(1)
HISTSIZE=5000
HISTFILESIZE=20000

export TERM=xterm-256color

# check the window size after each command and, if necessary,
# update the values of LINES and COLUMNS.
shopt -s checkwinsize

# If set, the pattern "**" used in a pathname expansion context will
# match all files and zero or more directories and subdirectories.
#shopt -s globstar

# make less more friendly for non-text input files, see lesspipe(1)
[ -x /usr/bin/lesspipe ] && eval "$(SHELL=/bin/sh lesspipe)"

# enable color support of ls and also add handy aliases
if [ -x /usr/bin/dircolors ]; then
    test -r ~/.dircolors && eval "$(dircolors -b ~/.dircolors)" || eval "$(dircolors -b)"
    alias ls='ls --color=auto'
    #alias dir='dir --color=auto'
    #alias vdir='vdir --color=auto'

    alias grep='grep --color=auto'
    alias fgrep='fgrep --color=auto'
    alias egrep='egrep --color=auto'
fi

# some more ls aliases
alias ll='ls -alhF'
alias la='ls -A'
alias l='ls -CF'

# Alias definitions.
# You may want to put all your additions into a separate file like
# ~/.bash_aliases, instead of adding them here directly.
# See /usr/share/doc/bash-doc/examples in the bash-doc package.

if [ -f ~/.bash_aliases ]; then
    . ~/.bash_aliases
fi

# enable programmable completion features (you don't need to enable
# this, if it's already enabled in /etc/bash.bashrc and /etc/profile
# sources /etc/bash.bashrc).
if ! shopt -oq posix; then
  if [ -f /usr/share/bash-completion/bash_completion ]; then
    . /usr/share/bash-completion/bash_completion
  elif [ -f /etc/bash_completion ]; then
    . /etc/bash_completion
  fi
fi
# set PATH so it includes user's private bin if it exists
if [ -d "$HOME/bin" ] ; then
    PATH="$HOME/bin:$PATH"
fi

# ======================================================== #
# mahaloz config base                                      #
# ======================================================== #

# useful alias
alias tmux='tmux -u' 
alias ipython=ipython3
alias bat=batcat
export PYTHONBREAKPOINT=ipdb.set_trace

# vim mode
set -o vi

# fix colors in terminal
export TERM=xterm-256color

# MACOS ONLY ADDITIONS
if [[ "$OSTYPE" == "darwin"* ]]; then
    alias ls="gls --color" 
    export PATH="/usr/local/opt/coreutils/libexec/gnubin:$PATH"
    export PATH="/usr/local/bin:$PATH"
    export MANPATH="/usr/local/opt/coreutils/libexec/gnuman:$MANPATH"
    export CLICOLORS=1
    export BASH_SILENCE_DEPRECATION_WARNING=1
# WINDOWS ONLY ADDITIONS 
elif [[ "$OSTYPE" == "cygwin" ]]; then
    alias ls="gls --color" 
fi 


# start starship env
if ! command -v starship &> /dev/null 
then 
    echo "[+] Installing Starship..."
    sh -c "$(curl -fsSL https://starship.rs/install.sh)" -s -y 
    source ~/.bashrc
else
    eval "$(starship init bash)"
fi 


#
# Extras 
#

alias python=python3

# docker
export PATH=/usr/bin:$PATH
export DOCKER_HOST=unix:///run/user/1000/docker.sock

# headless decompilers
export GHIDRA_PATH=/home/mahaloz/ctf/tools/ghidra/support/analyzeHeadless 
export IDA_PATH=/home/mahaloz/ctf/tools/ida/idapro-8.0/idat64

if [ "$USER" != "root" ]; then
    # virtual env
    export WORKON_HOME=~/.virtualenvs
    VIRTUALENVWRAPPER_PYTHON='python3'
    source /home/mahaloz/.local/bin/virtualenvwrapper.sh

    # joern
    export PATH="$HOME/bin/joern-cli:$PATH"

    
    # ruby 
    export PATH="$HOME/.rbenv/bin:$PATH"
    eval "$(rbenv init -)"
    export PATH="$HOME/.rbenv/plugins/ruby-build/bin:$PATH"
    
    # java
    source /etc/profile.d/gradle.sh
    
    # wasm
    export PATH="/opt/wabt-1.0.29/bin:$PATH"
    
    . "$HOME/.cargo/env"
fi 
