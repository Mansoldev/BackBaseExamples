<?php

class Html(){
	//para guardar lo que se muestra en las funciones, el html en las funciones vamos.
	$this->html='';

	//Muestra doctype y toda la cabecera hasta <body>, toma parametros para los metadatos, array para frameworks y librerias?.
	public function displayInitial($autor,$descripcion...,$css(),$js()){

	}
	//Cierra el body y el html, para poner al final de todas las paginas.
	public function displayBottom(){
		return "</body></html>";
	}

}




?>