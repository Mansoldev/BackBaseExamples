<h3 align="center">Selecciona los registros a dar de baja</h3>
<?php
if (!file_exists("files/contactos.txt")){
	echo "Error No existen contactos, No se pudo abrir el archivo";
}else{
	//abrir el fichero
	
	$fp=fopen("files/contactos.txt","r");
	if(!$fp){
		echo "Problema al abrir el archivo de contactos";
	}else{
		echo "<CENTER><h2>SELECCIONA CONTACTOS PARA DAR BAJAS:</h2></CENTER>";
		echo "<table align=\"center\" border=1 cellspacing='5' cellpadding='3' >";
		echo "<tr>";
		echo "<tr><th>Número</th><th>Nombre</th><th>Apellidos</th><th>Teléfono</th><th>E-mail</th></tr>";
		$reg=1;
		echo "<form name='formulario' method='GET' action='baja.php'>";
		while(false!==($cadena=fgets($fp))){
			
			echo "<tr><td><input type='checkbox'  name='numReg[]' value=$reg> - $reg</td>";
			$lista=explode("#",$cadena);
			for ($i=0;$i<sizeof($lista)-1;$i++){
				echo "<td>$lista[$i]</td>";
			}
			echo "</tr>";
			$reg++;
		}
		echo "</table>";
		echo "<table align='center'><tr><td>";
		echo "<input type='submit'  name='Borrar' value='Borrar'/>";
		echo "<input type='reset'  name='Reset'/>";
		
		echo "</td></tr></TABLE>";
		echo"</form>";
		fclose($fp);
		
	}
	
}
echo "<br>";

?>
<h4 align="center">VOLVER AL <A href="index.html">INDICE</A> </h4>