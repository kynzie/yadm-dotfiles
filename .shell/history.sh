# Shell history for bash and zsh.
#
# Both shells: one file per shell under $XDG_STATE_HOME (formats differ):
#  * 100 000 entries
#  * commands saved as soon as they run
#  * a leading space keeps a command out of history
#  * older duplicates are removed
#  * timestamps recorded
#  * history expansions (!!, !$...) shown for confirmation before running

__hist_dir="${XDG_STATE_HOME:-$HOME/.local/state}"
HISTSIZE=100000

if [ -n "${ZSH_VERSION:-}" ]; then
	HISTFILE="$__hist_dir/zsh/history"
	SAVEHIST="$HISTSIZE"

	# save timestamp and duration of each command
	setopt extended_history

	# save immediately, import other shells' commands
	setopt share_history

	# " cmd" is not recorded
	setopt hist_ignore_space

	# a repeated command removes its older copy
	setopt hist_ignore_all_dups

	# show the expansion of !! / !$ before running it
	setopt hist_verify

	alias history="fc -l -t '%d/%m/%y %T' 1"   # same format as bash
else
	HISTFILE="$__hist_dir/bash/history"
	HISTFILESIZE="$HISTSIZE"
	HISTCONTROL=ignorespace:ignoredups:erasedups   # colon-separated list
	HISTTIMEFORMAT='%d/%m/%y %T '

	# append to the file, never overwrite it
	shopt -s histappend

	# show the expansion of !! / !$ before running it
	shopt -s histverify

	# Save each command as soon as it runs
	# default: only when the shell exits
	PROMPT_COMMAND="${PROMPT_COMMAND:+$PROMPT_COMMAND; }history -a"
fi

[ -d "${HISTFILE%/*}" ] || mkdir -p "${HISTFILE%/*}"
unset __hist_dir
