# .bashrc settings for Git

function g {
    if [[ $# > 0 ]]; then
        git $@
    else
        git status --short --branch
    fi
}

function ga {
    if [[ $# > 0 ]]; then
        git add $@
    else
        git add .
    fi
}
alias gA="git add --all"

alias gs="git status"

alias gd="git diff"

alias gr="git remote -v"

# git log
alias gg='git log --graph --decorate --date=relative --color --format="%C(yellow)%h%C(reset) %C(green)(%ar)%C(reset) %C(white)%s%C(reset) %C(blue)- %an%C(reset)%C(yellow)%d%C(reset)"'
alias gl='git log --color --decorate --graph'
alias gls='git log --color --decorate --graph --name-status'

# git-push-new (branch)
alias gpn='git push --set-upstream origin $(git symbolic-ref -q --short ${1:-HEAD})'
 
# git branch done
function gbd {
    local BRANCH_NAME=$(git symbolic-ref -q --short HEAD)
    git checkout ${1:-develop} && \
    git pull && \
    git branch -d "$BRANCH_NAME"
}
 
# git graph

