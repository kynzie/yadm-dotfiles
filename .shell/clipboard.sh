# System clipboard from the command line, bash and zsh.
#
#   command | clipcopy     copy standard input
#   clipcopy FILE          copy the content of FILE
#   clippaste              write the clipboard to standard output
#
# Uses the tool matching the session:
# * Wayland: wl-clipboard
# * X11: xclip or xsel
# * macOS: pbcopy/pbpaste
# * Cygwin: /dev/clipboard

#######################################
# Print the clipboard backend usable in this session.
# Outputs:
#   wayland, xclip, xsel, macos or cygwin.
# Returns:
#   0 if a backend was found, 1 otherwise.
#######################################
__clip_backend() {
    if [ -n "${WAYLAND_DISPLAY:-}" ] && command -v wl-copy >/dev/null 2>&1; then
        echo wayland
    elif [ -n "${DISPLAY:-}" ] && command -v xclip >/dev/null 2>&1; then
        echo xclip
    elif [ -n "${DISPLAY:-}" ] && command -v xsel >/dev/null 2>&1; then
        echo xsel
    elif command -v pbcopy >/dev/null 2>&1; then
        echo macos
    elif [ -w /dev/clipboard ]; then
        echo cygwin
    else
        return 1
    fi
}

#######################################
# Copy standard input, or the content of a file, to the clipboard.
# Arguments:
#   $1  optional file to copy instead of standard input
# Returns:
#   1 if no clipboard tool is available or the file cannot be read.
#######################################
clipcopy() {
    local backend

    if [ $# -gt 0 ]; then
        clipcopy < "$1"
        return
    fi
    backend=$(__clip_backend) || {
        echo "clipcopy: no clipboard tool available in this session" >&2
        return 1
    }
    case $backend in
        wayland) wl-copy ;;
        xclip)   xclip -in -selection clipboard ;;
        xsel)    xsel --clipboard --input ;;
        macos)   pbcopy ;;
        cygwin)  cat > /dev/clipboard ;;
    esac
}

#######################################
# Write the clipboard content to standard output.
# Returns:
#   1 if no clipboard tool is available.
#######################################
clippaste() {
    local backend

    backend=$(__clip_backend) || {
        echo "clippaste: no clipboard tool available in this session" >&2
        return 1
    }
    case $backend in
        wayland) wl-paste --no-newline ;;
        xclip)   xclip -out -selection clipboard ;;
        xsel)    xsel --clipboard --output ;;
        macos)   pbpaste ;;
        cygwin)  cat /dev/clipboard ;;
    esac
}
