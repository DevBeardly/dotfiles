#!/usr/bin/env sh

# terminate already running bar instances
killall -q polybar

# wait until the processes have been shut down
while pgrep -u $UID -x polybar >/dev/null; do sleep1; done

# launch bar1 and bar2
polybar bar1 -r &
polybar bar2 -r &

echo "Bars launched..."
