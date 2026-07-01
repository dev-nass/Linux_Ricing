#!/usr/bin/env bash
# NOTE: chmod +x ~/.config/polybar/launch.sh

# Terminate already running bar instances
killall -q polybar

# Wait until the processes have been shut down
while pgrep -u $UID -x polybar >/dev/null; do sleep 1; done

# Launch Polybar, using default config location ~/.config/polybar/config.ini
polybar mybar 2>&1 | tee -a /tmp/polybar.log &
disown

echo "Polybar launched..."
