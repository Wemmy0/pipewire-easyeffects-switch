#!/bin/bash

# Listen for changes in audio events
pactl subscribe | while read -r event; do
    if [[ "$(pactl get-default-sink)" == "alsa_output.pci-0000_c1_00.6.analog-stereo" ]]; then
        # Enable effects
        # easyeffects -b 2
        easyeffects -l lappy_mctopface
    else
        # Disable effects
        # easyeffects -b 1
        easyeffects -l empty
    fi
    sleep 15
done
