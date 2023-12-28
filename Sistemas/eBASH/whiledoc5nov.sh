#! /bin/bash
archivo=/etc/passwd
vIFS="$IFS"
while IFS=: read -r usuario enpass uid gid desc home shell 
# Solo los UID mayores de 1000 son usuarios creados por el administrador
do
[ $UID –ge 500 ] && echo "Usuario: $usuario ($uid) HOME: \"$home\" SHELL: $shell"
done < $archivo
IFS="$vIFS"

