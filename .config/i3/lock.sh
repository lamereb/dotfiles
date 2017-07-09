#!/bin/bash
SCREEN=/tmp/screen.png
LOCK=/tmp/screen-overlay.png
# ORIG_LOCK=/home/lamereb/Pictures/desktop/encom-tron.jpg
ORIG_LOCK=/home/lamereb/Pictures/desktop/nKxrAY9.jpg

scrot $SCREEN
convert $SCREEN -scale 5% -scale 2000% $SCREEN
[[ -f $1 ]] && ORIG_LOCK=$1
# convert $ORIG_LOCK -scale 200% -alpha set -channel a -evaluate set 85% +channel $LOCK
convert $ORIG_LOCK -scale 100% -alpha set -channel a -evaluate set 85% +channel $LOCK
convert $SCREEN $LOCK -gravity center -composite -matte $SCREEN
i3lock -i $SCREEN
rm $SCREEN
rm $LOCK
