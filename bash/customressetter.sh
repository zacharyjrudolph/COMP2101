#!/bin/bash
RES=${1?Error: no name given please pick half screen resolution(1) fullscreen resolution(2)}
xrandr --newmode "1896x960_60.00"  150.50  1896 2008 2208 2520  960 963 973 996 -hsync +vsync 2>/dev/null
xrandr --addmode Virtual1  "1896x960_60.00"
sudo xrandr --newmode "952x930_60.00"   72.50  952 1008 1104 1256  930 933 943 965 -hsync +vsync 2>/dev/null
xrandr --addmode Virtual1  "952x930_60.00"
if [ $RES -eq 1 ]
then
  xrandr -s 952x930_60
elif [ $RES -eq 2 ]
then
  xrandr -s 1896x960_60
else
  echo "Error, input invalid"
fi
