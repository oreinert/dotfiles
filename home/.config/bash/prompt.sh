_nred="$(tput setaf 1 2> /dev/null)"
_ngreen="$(tput setaf 2 2> /dev/null)"
_nyellow="$(tput setaf 3 2> /dev/null)"
_nblue="$(tput setaf 4 2> /dev/null)"
_nmagenta="$(tput setaf 5 2> /dev/null)"
_ncyan="$(tput setaf 6 2> /dev/null)"
_nwhite="$(tput setaf 7 2> /dev/null)"
_sgr0="$(tput sgr0 2> /dev/null)"

function parse_git_branch() {
local NAME=`git symbolic-ref --short HEAD 2>/dev/null`
if [ "$NAME" == "master" ]; then
	echo -ne "${_nmagenta}${NAME}$1${_sgr0} _ "
elif [ -n "$NAME" ]; then
	echo -ne "${_nyellow}${NAME}$1${_sgr0} _ "
fi
}

function check_distrobox {
    if [ -n "${CONTAINER_ID:-}" ]; then
        echo "/$_ncyan$CONTAINER_ID$_sgr0"
    fi
}

function show_rc {
    if [ $1 -eq 0 ]; then
        echo "${_ngreen}0${_sgr0}"
    else
        echo "${_nred}$1${_sgr0}"
    fi
}

PS1="${_nblue}\t${_sgr0} _ \u@\h$(check_distrobox) _ \$(show_rc \$?) _ \w _ \$(parse_git_branch)%\j\n\$$_sgr0 "


