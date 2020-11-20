source ~/.git-prompt.sh
export CLICOLOR=1
[ -f /usr/local/etc/bash_completion ] && . /usr/local/etc/bash_completion

alias reload="source ~/.bashrc"
alias vimbash="vim ~/.bashrc"
alias glog="git log --color=always | less -r"

alias ll='ls -lG'
alias python='python3'

alias t="tree -C"
alias mv="/bin/mv -i"
alias cp="/bin/cp -i"
alias rm="/bin/rm -i"
alias left="ls -t -l"
alias mkdir="mkdir -p"
alias showteach="cat ~/Documents/EPITA/cycle-ingenieur/First\ Year/Semester\ 5/Administration/teacher_contact_list.txt"
alias lab="bash ~/.my_bash_commands/setup_labo.sh"
alias cdlab="cd ~/labo"
alias cdjournal="cd ~/.journal"
alias cdprisma="cd ~/Documents/PRISMA"


# Fast accesx to S5 and S5 Projects
alias cds5="cd ~/Documents/EPITA/cycle-ingenieur/First\ Year/Semester\ 5"
alias cdmmk="cd ~/Documents/EPITA/cycle-ingenieur/First\ Year/Semester\ 5/Projets/ihor.husak-minimake-2023"
# Malloc does not work on map and is in the VM
# alias cdmlc="cd ~/Documents/EPITA/cycle-ingenieur/First\ Year/Semester\ 5/Projets/ihor.husak-malloc-2023"
alias cdmfd="cd ~/Documents/EPITA/cycle-ingenieur/First\ Year/Semester\ 5/Projets/ihor.husak-myfind-2023"
alias cdsh="cd ~/Documents/EPITA/cycle-ingenieur/First\ Year/Semester\ 5/42sh"




alias mch="make check"
alias mc="make clean"

alias sub="bash ~/.my_bash_commands/submission.sh"
alias bm="bash ~/.my_bash_commands/buildmake.sh"
alias gccc="gcc -Wall -Wextra -Werror -std=c99 -pedantic -c "

green="\001$(tput setaf 2)\002"
red="\001$(tput setaf 1)\002"
cyan="\001$(tput setaf 6)\002"
purple="\001$(tput setaf 13)\002"
dim="\001$(tput dim)\002"
magenta="\001$(tput sgr0)\002"
reset="\001$(tput setaf 7)\002"

PS1='\[\033[0;32m\]\[\033[0m\033[0;32m\]Ace_PRISMA\[\033[0;36m\] @ \[\033[0;36m\]MacBookPro | \W\[\033[0;33m\]$(__git_ps1)\n\[\033[0;36m\]└─▶\[\033[0m\] '
export PS1

unset green cyan dim reset

export PS1

export LESS_TERMCAP_mb=$'\e[1;32m'
export LESS_TERMCAP_md=$'\e[1;32m'
export LESS_TERMCAP_me=$'\e[0m'
export LESS_TERMCAP_se=$'\e[0m'
export LESS_TERMCAP_so=$'\e[01;33m'
export LESS_TERMCAP_ue=$'\e[0m'
export LESS_TERMCAP_us=$'\e[1;4;31m'

export PATH="/usr/local/opt/findutils/libexec/gnubin:$PATH"
export PATH="/usr/local/opt/coreutils/libexec/gnubin:$PATH"
export PATH="/usr/local/bin:$PATH"
export PATH="/Users/ace/.emacs.d/bin:$PATH"
export PATH="(brew --prefix)/bin:$PATH"

