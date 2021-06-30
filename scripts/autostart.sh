#!/bin/bash
picom -b
fcitx5 &
nm-applet &
/bin/bash ~/scripts/dwm/dwm-status.sh &
/bin/bash ~/scripts/wp.sh &

