<?php

/*require_once "Models/Persona.php";
require_once "Controllers/PersonasController.php";*/
spl_autoload_register(function($clase){
	$ruta = str_replace("\\", "/", $clase).".php";
	if(is_readable($ruta)){
		require_once $ruta;
	}else{
		echo "El archivo no existe";
	}
});


Models\Persona::Hola();
Controllers\PersonasController::Hola();

?>