#!/bin/bash
#
# sbruselario@frro.utn.edu.ar
#
#

sudo snap refresh 
sudo apt-get autoremove -y && sudo apt-get install -f -y && sudo apt-get update -y && sudo apt-get upgrade -y && sudo apt-get dist-upgrade && sudo apt-get autoremove -y && sudo apt-get clean -y
echo "Pulse una tecla para cerrar..."
read p
exit 1
