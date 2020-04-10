#!/usr/bin/env bash


options="        lock
        logout
        sleep
        hibernate
        reboot
        shutdown"
themes_dir=$HOME/.config/rofi
theme=${1:-$themes_dir/slate_power.rasi}
selection=$(echo -e "${options}" | rofi -dmenu -config $theme -columns 1 -lines 6 -width 35)

echo "This is your selection: $selection"

case "${selection}" in
    "        lock")
        lock;;
    "        logout")
        i3-msg exit;;
    "        sleep")
        lock && systemctl suspend;;
    "        hibernate")
        lock && systemctl hibernate;;
    "        reboot")
        systemctl reboot;;
    "        shutdown")
        shutdown -h 0;;
esac
