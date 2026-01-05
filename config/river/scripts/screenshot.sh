#!/bin/sh
# river/scripts/screenshot.sh

region=$(slurp)
path="${HOME}/media/screenshot_$(date +%Y-%m-%d_%H_%M_%S).png"

if [ -z "$region" ]; then
    exit 0
fi

if grim -g "$region" "$path"; then
    wl-copy < "$path"
    notify-send -u low "Capture Success"
fi
