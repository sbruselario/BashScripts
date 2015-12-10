#!/bin/bash
#
# sbruselario@frro.utn.edu.ar
#
#

clear

xrandr --newmode "1440x900_60.00"  106.50  1440 1528 1672 1904  900 903 909 934 -hsync +vsync 
xrandr --addmode VGA1 1440x900_60.00
xrandr --output VGA1 --primary

notify-send 'MONITOR VGA1' ''

exit 1
