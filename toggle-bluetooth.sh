#!/bin/bash

# https://askubuntu.com/questions/1144596/set-a-shortcut-to-toggle-bluetooth-on-or-off

if rfkill list bluetooth | grep -q 'yes$' ; then
  rfkill unblock bluetooth
  notify-send -i /usr/share/icons/Papirus-Adapta/24x24/panel/blueman-active.svg "Ligando bluetooth..."
else
  rfkill block bluetooth
  notify-send -i /usr/share/icons/Papirus-Adapta/24x24/panel/blueman-disabled.svg "Desligando bluetooth..."
fi
