if type -t go >/dev/null; then
    export GOPATH="$HOME/go"
    PATH+=":$GOPATH/bin"
fi
