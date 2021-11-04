RED="%F{red}"
BOLD_RED="%B${RED}"
GREEN="%F{green}"
BOLD_GREEN="%B${GREEN}"
YELLOW="%F{yellow}"
BOLD_YELLOW="%B${YELLOW}"
BLUE="%F{blue}"
BOLD_BLUE="%B${BLUE}"
PURPLE="%F{magenta}"
CYAN="%F{cyan}"
WHITE="%F{white}"
BOLD_GRAY="%B%F{gray}"
COLOR_NONE="%f%b"
PMT_DATE="%D{%a %b %d}"
PMT_TIME="%D{%H:%M:%S}"
PMT_WORK_DIR="%~"
PMT_USER="%n"
PMT_HOST="%m"
PMT_JOBS="%j"
PMT_SEP=$'\n'

. $HOME/.shellrc

setopt prompt_subst
autoload -Uz add-zsh-hook
prompt_opts=(cr subst percent)
add-zsh-hook precmd set_ps1
setopt interactivecomments

for conf in $HOME/.zsh/**.zsh; do
	source $conf
done
