<?php
// apertura del fichero
$fp=fopen("files/prueba.txt","r");
// comprobamos si se ha podido abrir
if(!$fp){
	echo ("Error al abrir el fichero"); // mostramos el error si no se ha podido abrir
}else{
	while(!feof($fp)){   // mientras no se llegue al fina del fichero 
	$car=fgetc($fp);     // leemos un caracter
	if ($car=="\n"){      // Comprueba si el caracter leído es el retorno de carro
		echo "<br>"; 	 // imprime una línea en blanco si leyo un retorno de carro
	}
	echo $car;           // imprime el caracrer leido siempre
	}	
}
?>