#!/bin/bash

# https://askubuntu.com/questions/1144596/set-a-shortcut-to-toggle-bluetooth-on-or-off

if rfkill list wlan | grep -q 'yes$' ; then
    rfkill unblock wlan
else
    rfkill block wlan
fi
