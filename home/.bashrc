# Common .bashrc (for openSUSE Linux)

umask 0022

# git clone https://github.com/chriskempson/base16-shell.git ~/.config/base16-shell
if [[ -d $HOME/.config/base16-shell && ! "$WINDOWMANAGER" =~ gnome ]]; then
	BASE16="$HOME/.config/base16-shell/base16-chalk.dark.sh"
	[[ -s "$BASE16" ]] && source "$BASE16"
fi

#----------------------------------------------------------------------

export EDITOR=/usr/bin/vim
export PYTHONPATH+=${PYTHONPATH:+:}$HOME/bin/python
export CDPATH+=${CDPATH:+:}/run/media/$USER

#----------------------------------------------------------------------

if [[ "$-" =~ i ]]; then
    source /usr/share/homeshick/homeshick.sh
    source /usr/share/homeshick/completions/homeshick-completion.bash

    homeshick refresh 4 --quiet

    if [ -f ~/.alias ]; then
        source ~/.alias
    fi

    for RC_FILE in $HOME/.config/bash/*; do
        source "$RC_FILE"
    done

    if [ -f ~/.config/secrets ]; then
        source ~/.secrets
    fi
fi
