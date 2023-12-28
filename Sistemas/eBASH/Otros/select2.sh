#! /bin/bash
clear
IFS=":"
PS3="Escoge "
select di in ${PATH}
do
clear
if [ ${di} ]
  then
    echo "Has escogido la opción ${REPLY}"
    cnt=`ls -Al ${di}|wc -l`
    echo "${cnt} archivos en ${di}"
   else
    echo "ERROR! mala selección"
fi
echo -e "\n Pulsa enter para continuar, ctrl-c para salir"
read
done

