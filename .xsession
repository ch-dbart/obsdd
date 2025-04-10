#!/bin/sh

xrdb $HOME/.Xresources
xmodmap $HOME/.xmodmaprc

xset b off &
exec cwm
