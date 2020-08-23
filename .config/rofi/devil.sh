#!/usr/bin/env bash

options="$(echo /mnt/amparostorage/proyectosdevilbox*)"
themes_dir=$HOME/.config/rofi
theme=${1:-$themes_dir/slate_power.rasi}
selection=$(find /mnt/amparostorage/proyectosdevilbox -maxdepth 1 -type d -not -path '*/\.*' | rofi -dmenu -config $theme -columns 1 -lines 15 -width 35)
d="htdocs"

echo "This is your selection: $selection"

cd $selection && [ -d "${d}" ] && cd $d; code . ; break || code . ; break