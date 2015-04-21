# Common .bashrc (for openSUSE Linux)

# git clone https://github.com/chriskempson/base16-shell.git ~/.config/base16-shell
if [[ -d $HOME/.config/base16-shell && ! "$WINDOWMANAGER" =~ gnome ]]; then
	BASE16="$HOME/.config/base16-shell/base16-chalk.dark.sh"
	[[ -s "$BASE16" ]] && source "$BASE16"
fi

#----------------------------------------------------------------------

source /usr/share/homeshick/homeshick.sh
source /usr/share/homeshick/completions/homeshick-completion.bash

homeshick refresh 2 --quiet

#----------------------------------------------------------------------

export EDITOR=/usr/bin/vim
export PYTHONPATH=$HOME/bin/python

#----------------------------------------------------------------------

alias dir='ls -lhaF'
alias ll='ls -lF'
alias la='ls -aF'
alias lla='ls -laF'
alias lh='ls -hF'
alias llh='ls -lhF'

alias lz='unzip -l $*'

alias flush_diskcaches='sync ; sudo sh -c "echo 3 > /proc/sys/vm/drop_caches"'
alias rpmqd="rpm -qa --queryformat '%{installtime} %{installtime:date}\t%{name}-%{version}-%{release}\n' | sort -nr +1 | sed -e 's/^[^ ]* //'"

alias wget-docstruct='wget -r -k -p -np -nv'

#----------------------------------------------------------------------

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

#----------------------------------------------------------------------

for RC_FILE in $HOME/.bashrc.*; do
	source "$RC_FILE"
done

if [ -f ~/.secrets ]; then
	source ~/.secrets
fi
if [ -f ~/.alias ]; then
	source ~/.alias
fi

