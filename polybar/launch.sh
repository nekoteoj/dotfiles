#!/bin/sh

# Kill all polybar
killall -q polybar

# Wait until all processes have been shut down
while pgrep -u $UID -x polybar >/dev/null; do sleep 1; done

# Launch bars
polybar nekoteoj_1 -r &
