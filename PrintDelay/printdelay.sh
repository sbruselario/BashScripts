#!/bin/bash
# Impresión sobre folletos plastificados con impresora láser
# evitando que se formen burbujas en el plástico
# con una demora entre impresiones
#
# sbruselario@frro.utn.edu.ar
#
#

clear

while true
do
	let "cant=0"
	echo "Ingrese cantidad de folletos a imprimir:"
	read total

#inicio impresión
	inicio=$(date '+%d/%m/%Y %H:%M:%S');
	while [ "$cant" -lt "$total" ]
	do 
		clear
		lp -n 1 -o fit-to-page -o media=A4  datos_folleto.pdf
		let "cant++"
		let "restan=total-cant"
		echo ""
		echo "Folleto $cant de $total (restan $restan)."
		sleep 30
	done
#fin impresión

	fin=$(date '+%d/%m/%Y %H:%M:%S');
	
	cancel -a #limpio cola de impresión por si se quedó sin hojas la impresora
	clear
	echo "-------------------------------------------------"
	echo "Se imprimieron $cant folletos."
	echo "El proceso se inició $inicio y finalizó $fin"
	echo "-------------------------------------------------"
	echo ""

done
exit 1
