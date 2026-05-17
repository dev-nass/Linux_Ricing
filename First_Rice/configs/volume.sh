
#!/bin/bash
# chmod +x ~/.config/i3/volume.sh

pactl set-sink-volume @DEFAULT_SINK@ +10%
VOL=$(pactl get-sink-volume @DEFAULT_SINK@ | grep -oP '\d+(?=%)' | head -1)
[ "$VOL" -gt 150 ] && pactl set-sink-volume @DEFAULT_SINK@ 150%
pkill -RTMIN+10 i3blocks