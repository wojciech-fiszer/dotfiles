function parse_git_branch() {
    git branch 2> /dev/null | sed -n -e 's/^\* \(.*\)/[\1]/p'
}

COLOR_DEF=$'\e[0m'
COLOR_USR=$'\e[38;5;243m'
COLOR_DIR=$'\e[38;5;197m'
COLOR_GIT=$'\e[38;5;39m'
setopt PROMPT_SUBST
export PROMPT='%{${COLOR_USR}%}%n %{${COLOR_DIR}%}%~ %{${COLOR_GIT}%}$(parse_git_branch)%{${COLOR_DEF}%} $'$'\n''> '

alias cat="bat"
alias ll="ls -lh"
bindkey '[C' forward-word
bindkey '[D' backward-words