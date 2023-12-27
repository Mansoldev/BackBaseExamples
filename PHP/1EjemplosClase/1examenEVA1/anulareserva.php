<!DOCTYPE html>
<html lang="es">
<head>
	<meta charset="UTF-8"/>
	<title>Anular reserva</title>
</head>
<body>
<h1 align="center">Anulación de Reservas</h1><br>
<?
if (!file_exists("reservas.txt")){
	echo "<center><h3>¡Error! No existen contactos o no se pudo abrir el archivo</h3></center>";
}else{
	//abrir el fichero
	echo "<h3 align='center'>SELECCIONA RESERVAS PARA DAR DE BAJA</h3>";
	$fp=fopen("reservas.txt","r");
	if(!$fp){
		echo "<center><h3>Error al abrir el fichero</h3></center>";
	}else{
		echo "<table align='center' border=1 cellspacing='5' cellpadding='3'>";
		echo "<tr><form name='alta' method='post' action='borrareserva.php'>";
		echo "<tr><th>número</th><th>Cliente</th><th>Teléfono</th><th>Fecha de entrada</th><th>Fecha de salida</th></tr>";
		$cont=1;
		while(false!==($cadena=fgets($fp))){
			$linea=explode("#",$cadena);
			
			echo "<td><input type='checkbox' name='posicion[]' value='$cont'/> - $cont</td>";
			echo "<td>".$linea[2]."</td>";
			echo "<td>".$linea[3]."</td>";
			$fecha1=$linea[0];
			$fecha2=$linea[1];
			$diaE=substr( $fecha1, 8, 2);
			$diaS=substr( $fecha2, 8, 2);
			$mesE=substr( $fecha1, 5, 2);
			$mesS=substr( $fecha2, 5, 2);
			$anyoE=substr( $fecha1, 0, 4);
			$anyoS=substr( $fecha2, 0, 4);
			echo "<td>".$diaE." - ".$mesE." - ".$anyoE."</td>";
			echo "<td>".$diaS." - ".$mesS." - ".$anyoS."</td>";
			echo "</tr>";
			$cont++;
		}
		echo "</table>";
		echo "<center><input type='submit' name='Borrar' value='Anular Reserva'/><input type='reset' name='Restablecer'/></form></center>";
	}
	fclose($fp);
}
echo "<br>";
?>
<center><h3>Volver al <a href="index.html">INDICE</a></h3></center>
</body>
</html>