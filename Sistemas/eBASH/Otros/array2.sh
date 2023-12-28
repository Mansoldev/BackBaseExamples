#!/bin/bash
for HOST in www.google.es www.bing.com www.epdlp.com ss64.com www.w3schools.com 
do
echo "-----------------------"
echo $HOST
echo "-----------------------"
host $HOST
echo "-----------------------"
done

