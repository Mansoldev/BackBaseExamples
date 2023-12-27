<?php
// apertura del fichero
$numeroLetras=0;
$fp=fopen("files/prueba2.txt","r");
if(!$fp){
	echo ("Error al abrir el fichero");
}else{	
	while(!feof($fp)){
	$anterior=' ';
	$cadena=fgets($fp);
	for($i=0;$i<strlen($cadena)-2;$i++){
		if(ord($anterior)==32 && ord ($cadena[$i])!=32 && ord($cadena[$i]!=13)){
			$numeroLetras++;
			echo $numeroLetras;
		}
	
		if (ord($cadena[$i])==13){ // si ha llegado al salto de linea
			$anterior=' '; // y establecemos que el anterior sea un blanco.
			$i++;
		}else	$anterior=$cadena[$i];
		echo $cadena[$i];
	}
		echo $cadena."<br>";	
	
	}	
}	

fclose($fp);	
echo "<br>El numero de palabras es de $numeroLetras<br>";
?>