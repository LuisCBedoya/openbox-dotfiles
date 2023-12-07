#!/bin/bash
exec nitrogen --restore &
exec dunst &
bash ~/.config/dunst/scripts/low_bat_notifier.sh
if [[ ! `pidof xfce-polkit` ]]; then
	/usr/bin/lxpolkit &
fi
