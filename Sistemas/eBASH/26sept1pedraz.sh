#! /bin/bash
for carac in `palabras|sed -n '/^a.*s$/p'`
do 
	echo ${#carac} $carac
done
