
#!/bin/bash
# run `chmod +x ~/.config/i3/battery_dim.sh`

# Set the threshold and the target brightness (0-100)
THRESHOLD=20
LOW_BRIGHTNESS=30

while true; do
    # Get battery percentage
    BATTERY_LEVEL=$(acpi -b | grep -P -o '[0-9]+(?=%)')
    # Get charging status
    CHARGING_STATUS=$(acpi -b | grep -c "Charging")

    # If battery is low and NOT charging
    if [ "$BATTERY_LEVEL" -le "$THRESHOLD" ] && [ "$CHARGING_STATUS" -eq 0 ]; then
        # Reduce brightness to 30%
        brightnessctl set ${LOW_BRIGHTNESS}%
    fi

    # Check every 60 seconds
    sleep 60
done