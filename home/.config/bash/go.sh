if type -t go >/dev/null; then
    export GOPATH="$HOME/src/golang"
    PATH+=":$GOPATH/bin"
fi
