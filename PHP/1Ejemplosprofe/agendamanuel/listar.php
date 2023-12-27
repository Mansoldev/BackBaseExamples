<?php

if (!file_exists("files/contactos.txt")){
	echo "Error No existen contactos, No se pudo abrir el archivo";
}else{
	//abrir el fichero
	
	$fp=fopen("files/contactos.txt","r");
	if(!$fp){
		echo "Problema al abrir el archivo de contactos";
	}else{
			echo "<h1 align='center'>Listado de Clientes</h1>";
		echo "<table align=\"center\" border=1 cellspacing='5' cellpadding='3'>";
		echo "<tr>";
		echo "<tr><th>Número</th><th>Nombre</th><th>Apellidos</th><th>Ciudad</th><th>Teléfono</th><th>E-mail</th></tr>";
		$reg=1;
		while(false!==($cadena=fgets($fp))){
			echo "<tr><td>$reg</td>";
			$lista=explode("#",$cadena);
			for ($i=0;$i<sizeof($lista)-1;$i++){
				echo "<td>$lista[$i]</td>";
			}
			echo "</tr>";
			$reg++;
		}

		echo "<CENTER><h2>LISTADO DE CONTACTOS:</h2></CENTER>";
		echo "</table>";
		fclose($fp);
		
	}
	
}
echo "<br>";

?>
<h4 align="center">VOLVER AL <A href="index.html">INDICE</A> </h4>