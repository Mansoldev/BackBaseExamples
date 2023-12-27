<?php
//var_dump($_REQUEST);
$numRegistro=$_REQUEST["numReg"];

if(file_exists("files\contactos.txt")){
	$fp=fopen("files\contactos.txt","r");
	if(!$fp){
		echo "Error de apertura de archivos.";
	}else{
		$numero=1;
		$encontrado=false;
		while ((false!==($registro=fgets($fp)))&&!$encontrado){
			
				if($numRegistro==$numero){ 
						$encontrado=true;
						$regModificar=explode("#",$registro);
				}
			$numero++;	
			}
			fclose($fp);
		
		
	// formulario de modificación.
	
		echo "<CENTER><h2>MODIFICA EL CONTACTO:</h2></CENTER>";
		echo "<table align=\"center\" border=2 cellpadding=3 cellspacing=5>";
		echo "<tr><th colspan=2>INTRODUZCA LOS DATOS</th></tr>";
		echo "<form name=\"fechas\" method =\"GET\" action=\"modificaregistro.php\">";
		echo "<tr><td>NOMBRE: </td><td> <input type=\"Text\" size=\"30\"  name=\"Nombre\" VALUE=\"$regModificar[0]\"></td></tr>";
		echo "<tr><td>APELLIDOS: </td><td><input type=\"Text\" size=\"30\"  name=\"Apellidos\" VALUE=\"$regModificar[1]\"></td></tr>";
		echo "<tr><td>CIUDAD: </td><td><input type=\"Text\" size=\"30\"  name=\"Ciudad\" VALUE=\"$regModificar[2]>\"></td></tr>";
		echo "<tr><td>MOVIL: </td><td><input type=\"tel\" size=\"9\"  name=\"Movil\" VALUE=\"$regModificar[3]\"></td></tr>";
		echo "<tr><td>E-MAIL:</td><td> <input type=\"email\" size=\"30\"  name=\"Email\" VALUE=\"$regModificar[4]\"></td></tr>";
		echo "<input type=\"hidden\" size=\"30\"  name=\"numReg\" VALUE=\"$numRegistro\">";
		echo "<tr><td colspan=2 align=\"center\"><input type=\"submit\" value=\"Modificar\" ><input type=\"reset\" value=\"Resetear\" ></td></tr>";
		echo "</form>";
		echo "</table>";
	}
   	
}

?>
<h4 align="center">VOLVER AL <A href="index.html">INDICE</A> </h4>
