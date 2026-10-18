# ~/.profile: session environment, read once at login
# Exported variables are inherited by every program of the session
# Read by sh, bash (through ~/.bash_profile) and zsh (through ~/.zprofile),
# so it must stay POSIX.

#######################################
# Append a directory to PATH if it exists and is not already there.
# Arguments:
#   $1  directory
#######################################
__path_append() {
	[ -d "$1" ] || return 0
	case ":$PATH:" in
		*":$1:"*) ;;
		*) PATH=$PATH:$1 ;;
	esac
}

for __f in "$HOME"/.profile.d/*.sh; do
	[ -r "$__f" ] && . "$__f"
done
unset __f

# User executables (XDG Base Directory, systemd file-hierarchy)
__path_append "$HOME/.local/bin"

export PATH

unset -f __path_append

######################################
# Print the first of the given commands that is installed.
# Arguments:
#   $@  candidate commands, in order of preference
# Outputs:
#   The command name; nothing if none is installed.
# Returns:
#   0 if one was found, 1 otherwise.
#######################################
__first_available() {
	for __cmd; do
		if command -v "$__cmd" >/dev/null 2>&1; then
			printf '%s\n' "$__cmd"
			unset __cmd
			return 0
		fi
	done
	unset __cmd
	return 1
}

# nvim if installed
# otherwise the system's choice
# otherwise the first available of vim, vi, nano
# left unset if none is installed
__editor=$(__first_available nvim) || __editor=${EDITOR:-$(__first_available vim vi nano)}
if [ -n "$__editor" ]; then
	export EDITOR="$__editor" VISUAL="$__editor"
fi

unset __editor

export _JAVA_AWT_WM_NONREPARENTING=1
