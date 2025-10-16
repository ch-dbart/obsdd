#!/bin/ksh

alias halt='doas halt -p'
alias ls='ls -h1F'
alias openrsync='openrsync -a --rsync-path=/usr/bin/openrsync'
alias ping='ping -c 3'
alias pls='doas $(fc -ln -1)'
alias reboot='doas reboot'
alias top='top -1 -s 1 -U $(whoami)'

set -o vi
set -A complete_got_1 -- $(got -h 2>&1 | sed -n s/commands://p)
set -A complete_man_1 -- $(man -s 1 -k . | egrep -o '[-_,a-zA-Z0-9]*' | paste -s -d ' ' -)

kak()
{
    session=$(tmux ls 2> /dev/null | egrep 'attached' | cut -d ':' -f 1)
    [ -z $session ] && name=$(basename $PWD) || name=$session
    command kak -l | egrep $name \
        && command kak -c $name $@ \
        || command kak -s $name $@
}

tmux()
{
    xmodmap ~/.xmodmaprc
    [ $# -eq 0 ] \
        && command tmux -u new -A -s $(basename $PWD) \
        || command tmux $@
}
