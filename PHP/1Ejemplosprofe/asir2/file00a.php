<?php
// apertura del fichero
echo "Fichero de prueba ";
$fp=fopen("files/prueba.txt","r");
if(!$fp){
	echo ("Error al abrir el fichero");
}else{
	while(!feof($fp)){
	$cadena=fgets($fp)."<br>";
	echo $cadena;
	}	
}
?>