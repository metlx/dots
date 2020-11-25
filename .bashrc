# colors
grey="$(tput bold ; tput setaf 0)"
blue="$(tput bold; tput setaf 4)"
nc="$(tput sgr0)"

# exports
export PS1="\[$grey\]┌──[ \[$blue\]\u \[$grey\]\w\[$grey\] ]\n\[$grey\]└──╼ \[$nc\]"
export PATH=/usr/local/bin:/usr/bin:/bin:/usr/local/games:/usr/games:/usr/share/games:/usr/local/sbin:/usr/sbin:/sbin:~/.local/bin:/snap/bin:$PATH
export EDITOR="vim"

# GoLang
export GOROOT=/home/m/.go
export PATH=$GOROOT/bin:$PATH
export GOPATH=/home/m/go
export PATH=$GOPATH/bin:$PATH

# alias
alias :q="exit"
alias ip="ip --color"
alias ls="ls --color"
alias grep="grep --color"

# source files
[ -r /usr/share/bash-completion/completions ] &&
  . /usr/share/bash-completion/completions/*
