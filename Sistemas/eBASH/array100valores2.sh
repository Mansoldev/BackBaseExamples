#! /bin/bash
for a in `seq 0 1 99`
do
	array[$a]=$((100+$RANDOM%900))
	echo ${array[$a]}
done

