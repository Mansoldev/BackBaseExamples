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
do{
	echo "Indice: ".key($semana)." Valor: ".current($semana)."<br>";
	
}while(next($semana));



?>