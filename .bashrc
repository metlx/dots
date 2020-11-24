# colors
grey="$(tput bold ; tput setaf 0)"
blue="$(tput bold; tput setaf 4)"
nc="$(tput sgr0)"

# exports
export PS1="\[$grey\]┌──[ \[$blue\]\u \[$grey\]\w\[$grey\] ]\n\[$grey\]└──▶ \[$nc\]"
export EDITOR="vim"

# alias
alias :q="exit"
alias ip="ip --color"
alias ls="ls --color"
alias grep="grep --color"

# source files
[ -r /usr/share/bash-completion/completions ] &&
  . /usr/share/bash-completion/completions/*
