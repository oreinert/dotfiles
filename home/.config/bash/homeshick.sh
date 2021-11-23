if [ -d /usr/share/homeshick ]; then
    HOMESHICK_DIR=/usr/share/homeshick
elif [ -d ~/.homesick/repos/homeshick ]; then
    HOMESHICK_DIR=~/.homesick/repos/homeshick
fi

if [ -n "$HOMESHICK_DIR" ]; then
    source $HOMESHICK_DIR/homeshick.sh
    source $HOMESHICK_DIR/completions/homeshick-completion.bash

    homeshick refresh 4 --quiet
fi

