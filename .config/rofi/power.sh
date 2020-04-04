#!/usr/bin/env bash

# to edit themes in place with live reload:

# ag -l | entr -r $HOME/.config/rofi/on
# use -normal-window flag on rofi if you want to not have to close rofi to get
# back to your editor.
# https://www.reddit.com/r/qtools/comments/amswu9/autoloading_rofi_for_quick_themeing_experience/

options="        Lock
        Logout
        Sleep
        Hibernate
        Reboot
        Shutdown"
themes_dir=$HOME/.config/rofi
theme=${1:-$themes_dir/slate_power.rasi}
selection=$(echo -e "${options}" | rofi -dmenu -config $theme -columns 1 -lines 6 -width 1500)

echo "This is your selection: $selection"

case "${selection}" in
    "         lock")
        lock;;
    "       logout")
        i3-msg exit;;
    "        sleep")
        lock && systemctl suspend;;
    "   hibernate")
        lock && systemctl hibernate;;
    "      reboot")
        systemctl reboot;;
    "      shutdown")
        systemctl poweroff -i;;
esac