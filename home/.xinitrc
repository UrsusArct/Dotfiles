export SCRIPTS=$HOME/.local/bin
[[ ":$PATH:" != *":${SCRIPTS}:"* ]] && export PATH="${SCRIPTS}:${PATH}"
export BROWSER="firefox"

sxhkd &
exec bspwm
