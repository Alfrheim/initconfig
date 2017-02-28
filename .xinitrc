
#!/bin/sh

#
# ~/.xinitrc
#
# Executed by startx (run your window manager from here)
#

#export GTK2_RC_FILES="$HOME/.gtkrc-2.0"

#exec enlightenment_start
#xrdb -merge .Xresources

#backgroudn
feh --bg-scale /home/alfrheim/Desktop/Big-Green-Nature-Wallpaper.jpg

#Deactivate touchpad
/home/alfrheim/.xmonad/touchpadHandler.sh

stalonetray &

# Fire up apps

# xscreensaver -no-splash &
if [ -x /usr/bin/nm-applet ] ; then
    nm-applet --sm-disable &
fi


#exec dbus-launch xmobar & /usr/bin/xmonad
/usr/bin/xmonad
