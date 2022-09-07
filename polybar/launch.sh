#!/bin/sh

# Kill all polybar
killall -q polybar

# Wait until all processes have been shut down
while pgrep -u $UID -x polybar >/dev/null; do sleep 1; done

# Launch bars
# polybar nekoteoj_1 -r &

# Check for each display
my_laptop_internal_monitor=$(xrandr --query | grep 'eDP-1')
my_laptop_external_monitor=$(xrandr --query | grep 'HDMI-2')
if [[ $my_laptop_internal_monitor = *connected* ]]; then
    polybar nekoteoj_1 -r &
fi
if [[ $my_laptop_external_monitor = *connected* ]]; then
    polybar nekoteoj_2 -r &
fi
