#!/bin/bash
picom -b
fcitx5 &
nm-applet &
xset r rate 300 50
/bin/bash ~/scripts/dwm/dwm-status.sh &
/bin/bash ~/scripts/wp.sh &

