
<?php
// ejercicios para trabajar tema 2.
// Realiza un programa que de la vuelta a las palabras de una frase

$frase="Esa manana hacia mucho frio";
$afrase=explode(' ',$frase);
foreach($afrase as $palabra){
	$longitud=strlen($palabra);
	$vuelta="";
	for($i=0;$i<$longitud;$i++){
		$vuelta.=substr($palabra,$longitud-$i-1,1);
	}
	echo "$vuelta ";
}
?>