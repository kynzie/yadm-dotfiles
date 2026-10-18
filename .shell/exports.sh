export HISTFILE=$HOME/.history
export HISTSIZE=$((2 ** 15 - 1))
export HISTCONTROL=ignoredups,erasedups
export MAILCHECK=-1

set bell-style none

if [[ $SHELL == */zsh ]]; then
        export HISTFILE=$HOME/.history
else
        export HISTFILE=$HOME/.sh_history
        export HISTTIMEFORMAT="%d/%m/%y %T "
fi
