
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

ICON="󰠓  󱓟 "
GREEN='\[\033[0;32m\]'  # Green
RESET='\[\033[0m\]'      # Reset to default color

alias ls='lsd --color=auto'
alias cat='bat'
alias grep='grep --color=auto'

export EDITOR=nvim
PS1="$GREEN$ICON\w$RESET > "
. "$HOME/.cargo/env"

# change shell working dir after exit yazi
function y() {
	local tmp="$(mktemp -t "yazi-cwd.XXXXXX")" cwd
	yazi "$@" --cwd-file="$tmp"
	if cwd="$(command cat -- "$tmp")" && [ -n "$cwd" ] && [ "$cwd" != "$PWD" ]; then
		builtin cd -- "$cwd"
	fi
	rm -f -- "$tmp"
}
