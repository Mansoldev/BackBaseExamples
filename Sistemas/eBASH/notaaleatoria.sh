#! /bin/bash
asir2=(sergio mario davidb davidj rodrigo victor alberto desi patrick zoila davidh alvaro ivan miguel davidv paco)
for elemento in `echo ${!asir2[*]}`
do
	echo $((1+$RANDOM%10)) ${asir2[$elemento]}|tr -s 'a-z' 'A-Z'
done
