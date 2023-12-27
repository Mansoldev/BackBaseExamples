<?php

abstract class Molde{
	abstract public function ingresarNombre($nombre);
	abstract public function obtenerNombre();

	public static function mensaje($mensaje){
		print $mensaje;
	}
}
//FUNCIONA
//Molde::mensaje("Hola mundo");

class Persona extends Molde{
	private $mensaje="Hola gente de Mario<br>";
	private $nombre;

	public function mostrar(){
		print $this->mensaje;
	}
	public function ingresarNombre($nombre,$username="cf"){
		$this->nombre=$nombre.$username;
	}
	public function obtenerNombre(){
		print $this->nombre;
	}
}

$obj=new Persona();
$obj->mostrar();
$obj->ingresarNombre("Mario");
$obj->obtenerNombre();

?>