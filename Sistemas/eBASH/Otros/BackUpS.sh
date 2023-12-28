#! /bin/bash
clear
if [ ! -d ${HOME}/Scripts2014 ]
then
 echo "La carpeta ${HOME}/Scripts2014 ha sido creada"
 mkdir ${HOME}/Scripts2014
fi
ficheros=(`find ${HOME} -type f -name "*"|grep -v "examenJ" 2>/dev/null`)
for m in ${!ficheros[*]}
do
c=`grep -c "#! /bin/bash" ${ficheros[${m}] 2>/dev/null}`
if [ $c -ne 0 ]
 then
  cp ${ficheros[${m}]} ${HOME}/Scripts2014
fi
clear
echo "Buscando..."
done
cd ${HOME}/Scripts2014
ficheros=(`ls -lA|tr -s " " "*"|cut -d "*" -f 9`)
let cc=1
for m in ${!ficheros[*]}
do
 mv ${ficheros[${m}]} ${cc}-${ficheros[${m}]} 2>/dev/null
let cc=${cc}+1
done
cd -
