#!/bin/ksh

alias ls='ls -1F'
alias pls='doas $(fc -ln -1)'
alias rsync='openrsync -a --rsync-path=/usr/bin/openrsync'

set -o vi
set -A complete_got_1 -- \
    init \
    import im \
    clone cl \
    fetch fe \
    checkout co \
    update up \
    status st \
    log \
    diff di \
    blame bl \
    tree tr \
    ref \
    branch br \
    tag \
    add \
    remove rm \
    revert rv \
    commit ci \
    cherrypick cy \
    backout bo \
    rebase rb \
    histedit he \
    integrate ig \
    stage sg \
    unstage ug \
    cat \
    info
