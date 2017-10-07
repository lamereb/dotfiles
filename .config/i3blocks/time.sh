#!/bin/bash

# --- modification of this script [ 10/2/2017 ]
# https://www.reddit.com/r/i3wm/comments/6ej6cx/how_to_make_a_simple_i3blocks_button_launcher/ 
date '+%Y-%m-%d %H:%M:%S'
if [ -n "$BLOCK_BUTTON" ]
then
    gsimplecal &
fi
