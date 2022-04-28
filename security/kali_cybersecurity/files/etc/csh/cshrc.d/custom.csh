setenv PATH $PATH":/usr/sbin:/sbin:$HOME/bin"

alias cls tput clear
alias priv sudo
alias pico nano -w
alias md mkdir
alias dir ls -al
alias rd rmdir
alias df	df -k
alias du	du -k

set prompt="%m:%~>"
set correct=cmd
set autolist=ambiguous

umask 022
