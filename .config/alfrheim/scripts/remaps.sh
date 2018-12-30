#!/bin/bash

# Set keyboard layout
# check more options with:
# grep "grp:.*toggle" /usr/share/X11/xkb/rules/base.lst
#This is called by i3wm config
setxkbmap -layout "us,es"  -option 'grp:ctrls_toggle'
