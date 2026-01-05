#!/bin/bash
# river/scripts/wf-record.sh

path="${HOME}/media/capture_$(date +%Y-%m-%d_%H_%M_%S).mp4"

if pgrep -x wf-recorder > /dev/null; then
    pkill -SIGINT wf-recorder
    notify-send -u low "Fin"
else
    wf-recorder -a -r 60 -f "$path" &
    notify-send -u low "Rec"
fi
