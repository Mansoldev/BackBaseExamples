<?php
// apertura del fichero
$fp=fopen("files/prueba2.txt","r");
// comprobamos si se ha podido abrir
if(!$fp){
	echo ("Error al abrir el fichero"); // mostramos el error si no se ha podido abrir
}else{
	while(!feof($fp)){         // mientras no se llegue al final del fichero 
		$car=fgetc($fp);             // leemos un caracter
		echo $car."[".ord($car)."]"; // imprime el caracrer leido siempre
	}	
fclose($fp);
}
?>