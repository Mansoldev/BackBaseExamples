<?php
// ejercicios para trabajar tema 2.
// Realiza un programa que de la vuelta a una palabra
$palabra="informatica";
$longitud=strlen($palabra);
$vuelta="";
for($i=0;$i<$longitud;$i++){
	$vuelta.=substr($palabra,$longitud-$i-1,1);
}
echo "<br> $palabra : $vuelta";
?>