<?php

trait Personas{
	public $nombre;

	public function mostrarNombre(){
		echo $this->nombre;
	}
	//metodos estaticos, abstractos...
	abstract function asignarNombre($nombre);
}

trait Trabajador{
	protected function mensaje(){
		echo " y soy un trabajador";
	}
}

class Persona{
	use Personas, Trabajador;
	public function asignarNombre($nombre){
		$this->nombre=$nombre.self::mensaje();
	}
}

$persona=new Persona();
$persona->asignarNombre("Mario");
//echo $persona->nombre;
$persona->mostrarNombre();


?>