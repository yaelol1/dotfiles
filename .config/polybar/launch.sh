#!/usr/bin/env bash

# Terminate already running bar instances
killall -q polybar
# Wait until the processes have been shut down
while pgrep -u $UID -x polybar >/dev/null; do sleep 1; done

# Launch bar
polybar iDisplay &

my_laptop_external_monitor=$(xrandr --query | grep 'DP-1')
if [[ $my_laptop_external_monitor = *connected* ]]; then
    polybar eDisplay &
fi
