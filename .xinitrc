hash pulseaudio && pulseaudio &

hash compton && compton &

hash redshift && redshift &

hash google-chrome && google-chrome &

while true
do
	VOL="[Vol. $(amixer get Master | tail -1 | sed 's/.*\[\([0-9]*%\)\].*/\1/')]"
	LOCALTIME="[Date. $(date)]"
	NET="[Net. $(iwgetid --raw)]"

	if acpi -a | grep off-line > /dev/null
	then
		BAT="[Bat. $(acpi -b | awk '{ print $4 " " $5 }' | tr -d ',')]"
		xsetroot -name "$NET $BAT $VOL $LOCALTIME"
	else
		xsetroot -name "$NET $VOL $LOCALTIME"
	fi
	sleep 20s
done &

feh --bg-scale ~/Pictures/pog.jpg &

exec dwm
