#!/bin/sh

ip_adress=$(cat /home/d3vjh/.config/polybar/scripts/target | awk '{print $1}')
machine_name=$(cat /home/d3vjh/.config/polybar/scripts/target | awk '{print $2}')

if [ $ip_adress ] && [ $machine_name ]; then

	echo "%{F#e51d0b}什 %{F#ffffff}$ip_adress%{u-} - $machine_name"

else
	echo "%{F#e51d0b}    什 %{u-}%{F#ffffff} No target      "
fi
