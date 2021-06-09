# git clone https://github.com/chriskempson/base16-shell.git ~/.config/base16-shell
if [[ -d $HOME/.config/base16-shell && ! "$WINDOWMANAGER" =~ gnome ]]; then
	BASE16="$HOME/.config/base16-shell/base16-chalk.dark.sh"
	[[ -s "$BASE16" ]] && source "$BASE16"
fi

