#!/bin/bash
#
# sbruselario@frro.utn.edu.ar
#
#

clear
notify-send 'Esperando para acomodar pantallas...' ''
sleep 10
xrandr --newmode "1440x900_60.00"  106.50  1440 1528 1672 1904  900 903 909 934 -hsync +vsync 
xrandr --addmode VGA1 1440x900_60.00
xrandr --output VGA1 --primary --left-of LVDS1 #determino pantalla externa como principal y en la posición izquierda de notebook
rm ~/.config/monitors.xml #con esto evito un mensaje de error al iniciar sesión

notify-send 'MONITOR VGA1' 'configuración finalizada'

exit 1
