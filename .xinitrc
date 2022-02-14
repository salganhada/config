#!/bin/bash

while true; do
	#xsetroot -name $(date +%H:%M)
	TIME=$(date +%H:%M)
	if [ $(cat /sys/class/power_supply/BAT0/status) != 'Full' ]; then
		BAT="$(cat /sys/class/power_supply/BAT0/status):$(cat /sys/class/power_supply/BAT0/capacity)"
		xsetroot -name "$BAT | $TIME"
	else
		xsetroot -name "$TIME"
	fi
	sleep 60
done &
exec dwm
