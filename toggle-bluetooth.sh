#!/bin/bash

# https://askubuntu.com/questions/1144596/set-a-shortcut-to-toggle-bluetooth-on-or-off

if rfkill list bluetooth | grep -q 'yes$' ; then
  rfkill unblock bluetooth
  notify-send -i /usr/share/icons/Pop/scalable/status/bluetooth-active-symbolic.svg -h int:transient:1 "Bluetooth" "Ligando bluetooth..."
else
  rfkill block bluetooth
  notify-send -i /usr/share/icons/Pop/scalable/status/bluetooth-disabled-symbolic.svg -h int:transient:1 "Bluetooth" "Desligando bluetooth..."
fi
