<?php

class Facebook{
	public $nombre;
	public $edad;
	private $pass;
	protected $gustos;

	public function __construct($nombre,$edad,$pass,$gustos){
		$this->nombre=$nombre;
		$this->edad=$edad;
		$this->pass=$pass;
		$this->gustos=$gustos;
	}
	public function verInformacion(){
		echo "Nombre: ".$this->nombre."<br>";
		echo "Edad: ".$this->edad."<br>";
		$this->cambiarPass("54321");//accedemos a un metodo privado desde un publico
		echo "Password: ".$this->pass."<br>";
		echo "Gustos: ".$this->gustos."<br>";
	}
	private function cambiarPass($pass){
		$this->pass=$pass;
	}
}

$facebook=new Facebook("Mario García",23,"1234","Chocolate");
//echo $facebook->pass; //nos da error
//echo $facebook->gustos; //nos da error
//echo "<br><br>";
//$facebook->cambiarPass("4321"); //tampoco podemos, metodo privado
$facebook->verInformacion();
?>