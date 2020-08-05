#!/bin/bash

# https://askubuntu.com/questions/1144596/set-a-shortcut-to-toggle-bluetooth-on-or-off

if rfkill list wlan | grep -q 'yes$' ; then
  nmcli radio wifi on
  notify-send -i /usr/share/icons/Pop/scalable/status/network-wireless-connected-symbolic.svg -h int:transient:1 "Wifi" "Ligando wifi..."
else
  nmcli radio wifi off
  notify-send -i /usr/share/icons/Pop/scalable/status/network-wireless-disconnected-symbolic.svg -h int:transient:1 "Wifi" "Desligando wifi..."
fi
