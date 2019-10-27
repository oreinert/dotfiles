_nred="$(path tput setaf 1 2> /dev/null)"
_ngreen="$(path tput setaf 2 2> /dev/null)"
_nyellow="$(path tput setaf 3 2> /dev/null)"
_nblue="$(path tput setaf 4 2> /dev/null)"
_nmagenta="$(path tput setaf 5 2> /dev/null)"
_ncyan="$(path tput setaf 6 2> /dev/null)"
_nwhite="$(path tput setaf 7 2> /dev/null)"
_sgr0="$(path tput sgr0 2> /dev/null)"

function parse_git_branch() {
local NAME=`git symbolic-ref --short HEAD 2>/dev/null`
if [ "$NAME" == "master" ]; then
	echo -ne "${_nmagenta}${NAME}$1"
elif [ -n "$NAME" ]; then
	echo -ne "${_nyellow}${NAME}$1"
else
	echo -ne "${_ngreen}¬$1"
fi
}

PS1="\[$_ngreen\]\t _ \u@\h _ \$? _ \w _ \$(parse_git_branch $_ngreen) _ %\j\n\$ \[$_sgr0\]"


