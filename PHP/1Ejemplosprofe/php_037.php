<?php
// ejemplos con arrays o vectores.
$semana[]="lunes";
$semana[]="martes";
$semana[]="miercoles";
$semana[10]="jueves";
$semana[4]="viernes";
$semana[]="sabado";
$semana[]="domingo";

for($i=0;$i<count($semana);$i++){
	echo $semana[$i].'<br>';
}

?>