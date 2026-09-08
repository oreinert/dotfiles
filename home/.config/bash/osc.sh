if type -t osc >/dev/null; then
    alias oscb="osc build --ccache"
    alias oscsd="osc service run download_files"

    FIGNORE+=${FIGNORE:+:}.osc
fi
