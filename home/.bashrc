#
# ~/.bashrc
#

if [ -n "$DESKTOP_SESSION" ];then
        eval $(gnome-keyring-daemon --start)
            export SSH_AUTH_SOCK
fi

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

export SCRIPTS=$HOME/.local/bin
[[ ":$PATH:" != *":${SCRIPTS}:"* ]] && export PATH="${SCRIPTS}:${PATH}"

export BROWSER="firefox"

alias sdn='shutdown now'

alias ls='ls --color=auto'

export PS1="\w \[\e[00;35m\[$(tput bold)\]> \[$(tput sgr0)\]"

# Stops terminal from freezing when Ctrl + S pressed
stty -ixon
