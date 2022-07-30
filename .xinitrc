#!/bin/sh

# /etc/X11/xinit/xinitrc
#
# global xinitrc file, used by all X sessions started by xinit (startx)

# invoke global X session script
# . /etc/X11/Xsession


# keyboard
#sexkbmap us -variant colemak &

# compositor
picom -f &

# wallpaper
nitrogen --restore &

# keyboard
setxkbmap us -variant colemak &

# mouse
xsetroot -cursor_name left_ptr

# recompile dwm loop
#while true; do
	# no dbus
#	dwm >/dev/null 2>&1
	#dbus-launch /usr/local/bin/dwn 2> /dev/null
#done

#Dbus run
#systemctl --user import-environment DISPLAY XAUTHORITY

#if which dbus-update-activation-environment >/dev/null 2>&1; then
#        dbus-update-activation-environment DISPLAY XAUTHORITY
#fi

# Execute dwm
#exec dbus-launch --autolaunch=$(cat /var/lib/dbus/machine-id) dwm
exec bspwm
