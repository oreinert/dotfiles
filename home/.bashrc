# Common .bashrc (for openSUSE Linux)

umask 0022

if [[ "$-" =~ i ]]; then
    for RC_FILE in $HOME/.config/bash/*; do
        source "$RC_FILE"
    done
fi
