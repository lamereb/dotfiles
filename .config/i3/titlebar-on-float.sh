#!/usr/bin/env bash

# https://www.reddit.com/r/i3wm/comments/6hhh0u/toggle_title_bars_on_for_floating_windows_and_off/
focused=$(xprop -root _NET_ACTIVE_WINDOW | awk -F' ' '{print $NF}')
if xprop -id "${focused}" I3_FLOATING_WINDOW | grep -q "not found"; then
    i3 "floating enable, border normal"
else
    i3 "floating disable, border pixel 2"
fi
