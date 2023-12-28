#! /bin/bash
cc=1
for var in `cat palabras|sed -n '/^pe.*/p'`
do
echo "$cc $var"
cc=`expr $cc + 1`
done
