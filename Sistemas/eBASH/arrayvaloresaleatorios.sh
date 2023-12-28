#! /bin/bash
for aleatorio in `seq 0 1 99`
do
	array[$aleatorio]=$((100+RANDOM%900))
	echo ${array[$aleatorio]}
done


