if type -t fzf >/dev/null; then
    if [ -f /etc/profile.d/fzf-bash.sh ]; then
        source /etc/profile.d/fzf-bash.sh
    else
        [ -f /usr/share/bash-completion/completions/fzf ] && . /usr/share/bash-completion/completions/fzf
        [ -f /usr/share/bash-completion/completions/fzf-key-bindings ] && . /usr/share/bash-completion/completions/fzf-key-bindings
    fi
fi
