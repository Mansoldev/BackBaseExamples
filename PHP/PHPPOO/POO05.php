<?php

class Vehiculo{
	public $motor=false;
	public $marca;
	public $color;

	protected function estado(){
		if($this->motor){
			echo "El motor está encendido<br>";
		}else{
			echo "El motor está apagado<br>";
		}
	}
	public function estadoVehiculo(){
		$this->estado();
	}
	public function encender(){
		if($this->motor){
			echo "El motor ya está encendido<br>";
		}else{
			echo "Encendiendo el motor<br>";
			$this->motor=true;
		}
	}
}

class Moto extends Vehiculo{
	//si estado() fuese privado no funcionaria estadoMoto()
	public function estadoMoto(){
		$this->estado();
	}
}

class CuatriMoto extends Moto{

}

$vehiculo=new vehiculo();
$vehiculo->estadoVehiculo();
$vehiculo->encender();
$vehiculo->estadoVehiculo();
echo "<br><br>";

$moto=new Moto();
$moto->estadoMoto();
echo "<br><br>";


$cuatrimoto=new CuatriMoto();
$cuatrimoto->estadoMoto();
echo "<br><br>";

?>