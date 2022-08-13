#!/usr/bin/env bash

# Terminate already running bar instances
pkill polybar 

# Wait until the processes have been shut down
while pgrep -u $UID -x polybar >/dev/null; do sleep 1; done

# Launch polybar
polybar main -c .config/polybar/config.ini &

if [[ $(xrandr -q | grep -w 'DP-1 connected') ]]; then
	polybar external -c .config/polybar/config.ini &
fi
