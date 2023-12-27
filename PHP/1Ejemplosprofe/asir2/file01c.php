<?php
// apertura del fichero

$numeroLetras=0;
$fp=fopen("files/prueba2.txt","r");
if(!$fp){
	echo ("Error al abrir el fichero");
}else{
	while(!feof($fp)){
	$cadena=fgets($fp);
	$anterior=' ';
	for($i=0;$i<sizeof($cadena);$i++){
		if(ord($anterior)==32 && ord ($cadena[$i])!=32){
			$numeroLetras++;
			echo $i;
		}
		$anterior=$cadena[$i];
		
	}
	echo $cadena;
	}	
	
	echo "<br>El numero de palabras es de $numeroLetras<br>";
}
/*
$numeroLetras=0;
$fp=fopen("files/prueba2.txt","r");
if(!$fp){
	echo ("Error al abrir el fichero");
}else{
	while(!feof($fp)){
	$cadena=fgets($fp);
	for($i=0;$i<sizeof($vector);$i++){
		if ($vector[$i]!="\32") $numeroLetras++;
	}
	echo $cadena."($numeroLetras)<br>";
	}	
	
	echo "<br>El numero de palabras es de $numeroLetras";
}
fclose($fp);
*/
?>