#! /bin/bash
clear
alumnos=(David Rodrigo Paco Pepe Sergio Victor Mario DavidJ Javi)
echo ${alumnos[0]}
echo ${alumnos[*]}
echo ${alumnos[@]}
echo ${#alumnos[*]}
echo "${alumnos[2]} tiene ${#alumnos[2]} letras"
echo ${!alumnos[*]}

