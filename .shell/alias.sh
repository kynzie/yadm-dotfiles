#######################################
# Define an alias only if the installed tool accepts its options.
#
# The alias command line is run with "--version" appended last: every option
# before it is parsed and validated, then the tool prints its version and
# exits without doing anything (no listing, no kernel log read...).
# GNU, util-linux and procps tools accept the options used below;
# macOS, BSD and busybox implementations reject them;
# so no broken alias is defined.
#
# Arguments:
#   $1  alias name
#   $2  alias value: the command line to test and alias
#   $3  optional, arguments appended for the test ("--version" by default);
#       pass '' to run the command line as is, for tools that refuse
#       "--version" combined with other options (ps)
# Outputs:
#   None, the test output is discarded.
# Returns:
#   0 if the alias was defined, non-zero otherwise.
#######################################
__alias_if_supported() {
	eval "command $2 ${3---version}" >/dev/null 2>&1 && alias "$1=$2"
}

__alias_if_supported ls \
	'ls --classify --tabsize=0 --literal --color --show-control-chars --human-readable' \
	|| alias ls='ls -F'
__alias_if_supported diff 'diff -uprN --color'
__alias_if_supported grep 'grep --color=auto'
__alias_if_supported egrep 'egrep --color=auto'
# processes without kernel threads
__alias_if_supported psfu 'ps fu --ppid 2 -p 2 --deselect' ''
__alias_if_supported klog 'dmesg --color=always' \
	&& alias klog='dmesg --color=always | less -R'

unset -f __alias_if_supported

alias l='ls'
alias ll='ls -l'
alias la='ls -a'
alias lla='ls -la'
alias rm='rm -i'
alias cp='cp -i'
alias mv='mv -i'
alias df='df -h'
alias du='du -h'
alias ssh='TERM=xterm-256color ssh'
alias klog='dmesg --color=always | less -R'
alias v='$EDITOR'
