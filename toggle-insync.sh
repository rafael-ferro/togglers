#!/bin/bash

if insync get_status | grep -q 'PAUSED$' ; then
  insync resume_syncing
  notify-send -i /usr/share/icons/Papirus-Adapta/24x24/panel/insync-normal.svg "Retomando Insync..."
else
  insync pause_syncing
  notify-send -i /usr/share/icons/Papirus-Adapta/24x24/panel/insync-paused.svg "Pausando Insync..."
fi
