#! /bin/bash
conta=0
for lineas in `cat palabras|sed -n '/^pe.*/p'`
do	
	echo $conta $lineas>>tempo
	conta=$(($v+1))
done
