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

# User executables (XDG Base Directory, systemd file-hierarchy)
__path_append "$HOME/.local/bin"

export PATH

unset -f __path_append
