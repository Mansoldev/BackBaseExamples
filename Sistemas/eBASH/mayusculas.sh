#! /bin/bash
let cc=1
for var in `cat palabras`
do
multiplo=$(( cc % 10))
if ( $multiplo -equ 0 )
then
	$var|sed 's/[a-z]*/[A-Z]*/g'>>fichero3
else
	$var|sed 's/^[a-z]?*/^[A-Z]?*/g'>>fichero3
fi
cc=`expr $cc + 1`
done
