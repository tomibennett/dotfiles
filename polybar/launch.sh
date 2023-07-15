#!/usr/bin/env sh

# Terminate already running bar instances
pkill -9 polybar

# If all your bars have ipc enabled, you can also use
# polybar-msg cmd quit

if type "xrandr"; then
    for m in $(polybar --list-monitors | cut -d":" -f1); do
        MONITOR=$m polybar example --reload > "/tmp/polybar-example_${m}.log" 2>&1 & disown
    done
else
  polybar example --reload > "/polybar-example_${m}.log" 2>&1 & disown
fi
