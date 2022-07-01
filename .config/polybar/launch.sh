#!/bin/bash
# Kill running instances
killall -e polybar
while pgrep -u $UID -x polybar > /dev/null; do sleep 1; done
# Start a new instance for each monitor
for m in $(polybar --list-monitors | cut -d":" -f1); do
    echo $m
    MONITOR=$m polybar --config=$HOME/.config/polybar/config example &
done
