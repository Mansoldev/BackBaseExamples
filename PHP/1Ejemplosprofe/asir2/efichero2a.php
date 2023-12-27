<?php
// apertura del fichero
$numeroLetras=0;
$fp=fopen("files/prueba2.txt","r");
if(!$fp){
	echo ("Error al abrir el fichero");
}else{	
	$anterior=' ';
	while(!feof($fp)){
	$car=fgetc($fp);

		if(ord($anterior)==32 && (ord ($car)!=32) && ord($car)!=13){
			$numeroLetras++;
			echo $numeroLetras;
		}
		
		if (ord($car)==13){ // si ha llegado al salto de linea
			fgetc($fp); //leemos un caracter más el chr 10
			$anterior=' '; // y establecemos que el anterior sea un blanco.
			echo '<br>';
		}else		$anterior=$car;
	
	echo $car;
	}	
}	
echo "<br>El numero de palabras es de $numeroLetras<br>";
?>