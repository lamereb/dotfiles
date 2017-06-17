#!/bin/bash
scrot /tmp/screen.png
convert /tmp/screen.png -scale 10% -scale 1000% /tmp/screen.png
[[ -f $1 ]] && convert $1 /tmp/screen-overlay.png && convert /tmp/screen.png /tmp/screen-overlay.png -gravity center -composite -matte /tmp/screen.png
i3lock -u -i /tmp/screen.png
rm /tmp/screen.png
rm /tmp/screen-overlay.png
