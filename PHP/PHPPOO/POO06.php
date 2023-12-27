<?php

class Pagina{
	public $nombre="FrontMaster";
	public static $url="www.frontmaster.com";

	public function Bienvenida(){
		echo "Bienvenidos a <b>".$this->nombre."</b> la pagina es <b>".$this->url."</b><br>";
	}
	public function Bienvenida2(){
		echo "Bienvenidos a <b>".$this->nombre."</b> la pagina es <b>".Pagina::$url."</b><br>";
	}
	public static function bienvenidaEstatica(){
		echo "Bienvenidos a ".Pagina::$nombre;
	}
	public static function bienvenidaEstatica2(){
		echo "Bienvenidos a la clase Página";
	}
	public static function bienvenidaEstatica3(){
		echo "Bienvenidos a ".self::$url;
	}
}

class Web extends Pagina{

}


$pagina=new Pagina();
//error, no podemos usar $url en el método Bienvenida con $this->url
$pagina->bienvenida();
$pagina->bienvenida2();
echo "<br><br>";

//los metodos estaticos no pueden acceder a atributos de esa clase
//Pagina::bienvenidaEstatica();
Pagina::bienvenidaEstatica2();
echo "<br><br><br>";

Web::bienvenidaEstatica3();
?>