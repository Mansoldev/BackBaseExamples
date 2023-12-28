#! /bin/bash
if [ $# -ne 1 ]
then
  echo "ERROR! Esperaba un número entre 5 y 20, ambos incluidos"
else
  if [ $1 -lt 5 ] || [ $1 -gt 20 ]
  then
    echo "ERROR! Esperaba un número entre 5 y 20, ambos incluidos"
  else
    ne=`expr $1 + 10`
    ce=${ne}
    nd=1
    cd=1
    d="O"
    while [ ${ce} -ge 1  ]
    do
    espacios=${ne}
      while [ ${espacios} -ge 1 ]
      do
        echo -n " "
        espacios=`expr ${espacios} - 1`
      done
    digitos=${nd}
      while [ ${digitos} -ge 1 ]
      do
        echo -n ${d}
        digitos=`expr ${digitos} - 1`
      done
    echo
    nd=`expr ${nd} + 2`
    ne=`expr ${ne} - 1`
    ce=`expr ${ce} - 1` 
    done
      #======================================= Descendente
    nd=`expr ${nd} - 4`
    ne=`expr ${ne} + 2`
    ce=${ne}
    cef=`expr $1 + 10`
    while [ ${ce} -le ${cef} ]
    do
    espacios=1
      while [ ${espacios} -le ${ne} ]
      do
        echo -n " "
        espacios=`expr ${espacios} + 1`
      done
      digitos=1
      while [ ${digitos} -le ${nd} ]
       do
        echo -n ${d}
        digitos=`expr ${digitos} + 1`
      done
    echo
    nd=`expr ${nd} - 2`
    ne=`expr ${ne} + 1`
    ce=`expr ${ce} + 1`
    done
     
  fi
fi
