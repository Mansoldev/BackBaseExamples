  #procesamos los par�metros
  while [ $1 ]; do
    param=${1%=*} #obtenemos el par�metro 
    valor=${1#*=} #obtenemos el valor del par�metro
   
    if [ $param = "--basedatos" ]; then
       basedatos=$valor
    fi
	
    if [ $param = "--dir_destino" ]; then
       dirdestino=$valor
    fi
	
    if [ $param = "--email" ]; then
       email=$valor
    fi 

    shift #rotamos
  done