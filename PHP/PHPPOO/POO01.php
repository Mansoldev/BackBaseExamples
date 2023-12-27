<?php

	class Persona{

		//Atributos
		public $nombre = "Pedro";

		//Métodos
		public function hablar($mensaje){
			echo $mensaje;
		}
	}

	$Pedro=new Persona();
	echo $Pedro->nombre;
	$Pedro->hablar("Saludos");

?>