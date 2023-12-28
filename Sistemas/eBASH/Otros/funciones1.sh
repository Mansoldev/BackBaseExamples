#! /bin/bash
function Saluda()
{
if [ -z $1 ]
then
echo "Hola ${USER}! Cómo estás ?"
else
banner $1
fi
}
function Hoy()
{
echo `date +"%A %d en %B de %Y (%r)"`
}
############################### LLAMADAS A LAS FUNCIONES
Saluda 
Saluda "Carlos"
Hoy

