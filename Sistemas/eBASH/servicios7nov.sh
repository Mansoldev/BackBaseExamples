service --status-all 2>&1|while read c1 estado c2 servicio
do 
  case $estado in
  "+") e="iniciado y activo.";;
  "-") e="iniciado y detenido.";;
  "?") e="ni idea.";;
  esac
echo `tput bold`$servicio`tput init`" "$e
done|more
