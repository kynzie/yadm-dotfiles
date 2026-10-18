# Interactive shells only (bash -lc, ssh remote commands... stop here)
case $- in
	*i*) ;;
	*) return ;;
esac

# check the window size after each command and, if necessary,
# update the values of LINES and COLUMNS.
shopt -s checkwinsize

RED="\[\033[0;31m\]"
BOLD_RED="\[\033[1;31m\]"
GREEN="\[\033[0;32m\]"
BOLD_GREEN="\[\033[1;32m\]"
YELLOW="\[\033[0;33m\]"
BOLD_YELLOW="\[\033[1;33m\]"
BLUE="\[\033[0;34m\]"
BOLD_BLUE="\[\033[1;34m\]"
PURPLE="\[\033[0;35m\]"
CYAN="\[\033[0;36m\]"
WHITE="\[\033[1;37m\]"
BOLD_GRAY="\[\033[0;37m\]"
COLOR_NONE="\[\033[00m\]"
PMT_DATE="\d"
PMT_TIME="\t"
PMT_WORK_DIR="\w"
PMT_USER="\u"
PMT_HOST="\h"
PMT_JOBS="\j"
PMT_SEP=$IFS

# Start from the system's PROMPT_COMMAND (saved on first load) so that
# reloading this file does not stack the same commands again.
: "${__pc_system=$PROMPT_COMMAND}"
PROMPT_COMMAND=$__pc_system

. $HOME/.shellrc

# set_ps1 first: it reads the exit status of the last command
PROMPT_COMMAND="set_ps1${PROMPT_COMMAND:+; $PROMPT_COMMAND}"

# Bash completion: loads each command's completion on demand.
# Skipped if the system already loaded it (Arch: /etc/bash.bashrc).
if [ -z "${BASH_COMPLETION_VERSINFO:-}" ]; then
    for f in /usr/share/bash-completion/bash_completion \
             /usr/local/share/bash-completion/bash_completion \
             /etc/bash_completion; do
        if [ -r "$f" ]; then
            . "$f"
            break
        fi
    done
    unset f
fi
