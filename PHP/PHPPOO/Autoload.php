<?php

$_GET['action'];

//podemos pasarle la carpeta en la url
function autoload($clase){
	include $_GET['action']."/".$clase.".php";
}
spl_autoload_register('autoload');

Persona::mostrar("Hola mundo");
Auto::mostrar("Hola mondo");

?>