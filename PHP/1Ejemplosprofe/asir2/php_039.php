<?php
// ejemplos con arrays o vectores.
$semana[]="lunes";
$semana[]="martes";
$semana[]="miercoles";
$semana[10]="jueves";
$semana[4]="viernes";
$semana[]="sabado";
$semana[]="domingo";

reset($semana);
while(list($i,$v)=each($semana)){
	echo "Indice: ".$i." Valor: ".$v."<br>";
	
}



?>