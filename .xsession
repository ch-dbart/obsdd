#!/bin/sh

xrdb $HOME/.Xresources
xset b off
xsetroot -solid '#151515'

exec cwm & xterm & xbanish -a
