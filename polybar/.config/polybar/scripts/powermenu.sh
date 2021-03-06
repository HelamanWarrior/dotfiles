#!/bin/sh

chosen=$(printf " Power Off\n勒 Restart\n Lock" | rofi -dmenu -i -theme-str '@import "power.rasi"')

case "$chosen" in
  " Power Off") poweroff ;;
  "勒 Restart") reboot ;;
  " Lock") killall bspwm ;;
  *) exit 1 ;;
esac
