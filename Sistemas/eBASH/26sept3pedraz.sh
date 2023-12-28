#! /bin/bash
conta=0
for lineas in `cat palabras|sed -n '/^pe.*/p'`
do	
	echo $conta $lineas>>tempo
	echo >>tempo
	echo conta=$(($v+1))>>tempo
	
done

let v=1;for pa in `cat palabras|sed -n '/^pe.*/p'`; do echo $v $pa>>tempo2;echo>>tempo2;v=$(($v+1)); done
