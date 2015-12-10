#!/bin/bash
#
# sbruselario@frro.utn.edu.ar
#
#

clear

while true 
do
	let "cant=0"
	echo "Ingrese nombre del proyecto:"
	read nombre
	echo "Ingrese cantidad de paginas a escanear:"
	read total

#inicio scaneo

	mkdir "$nombre"
	inicio=$(date '+%d/%m/%Y %H:%M:%S');
	while [ "$cant" -lt "$total" ]
	do 
		clear
			#se saca este delay porque hasta que arranca el scaner tarda 7 seg aprox.
			#for i in {5..0}
			#do
			#	sleep 1
			#	tput cup 5 15
			#	echo "----> $i segundos para el próximo escaneo..."
			#done
		clear
		let "cant++"
		echo "Escaneando la página $cant..."
		#-l 0   -t 0  -x 210  -y 296.926 es para una hoja a4
		scanimage -p --mode Color -l 0 -t 0 -x 210 -y 296.926 --resolution 150  | convert  -  "$nombre/$nombre-`printf %03d $cant`.jpg"
		let "restan=total-cant"
		echo ""
		
	done

	#fin scaneo

	clear
	cd $nombre
	echo "Convirtiendo a PDF..."
	convert *.jpg $nombre.pdf
	echo "Limpiando carpeta..."
	rm *.jpg
	cd ..

	clear

	fin=$(date '+%d/%m/%Y %H:%M:%S');
	clear
	echo "-------------------------------------------------"
	echo "Se escanearon $cant hojas."
	echo "El proceso se inició $inicio y finalizó $fin"
	echo "-------------------------------------------------"
	echo ""

done


exit 1
