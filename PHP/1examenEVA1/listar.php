<!DOCTYPE html>
<html lang="es">
<head>
	<meta charset="UTF-8"/>
	<title>Listado de Reservas</title>
</head>
<body>
<h1 align="center">Listado de Reservas</h1><br>
<?
// Comprobamos si ya tiene campos el fichero, si no, no se puede abrir.
if (!file_exists("reservas.txt")){
	echo "<center><h3>¡Error! No existen contactos o no se pudo abrir el archivo</h3></center>";
}else{
	//comprobamos si se puede abrir el fichero
	$fp=fopen("reservas.txt","r");
	if(!$fp){
		echo "<center><h3>Error al abrir el fichero</h3></center>";
	}else{
		echo "<table align='center' border=1 cellspacing='5' cellpadding='3'>";
		echo "<tr>";
		echo "<tr><th>Cliente</th><th>Teléfono</th><th>Fecha de entrada</th><th>Fecha de salida</th></tr>";
		while(false!==($cadena=fgets($fp))){
			//como hay que tratar los campos de fecha, no puedo realizar un ciclo ciego.
			$linea=explode("#",$cadena);
			echo "<td>".$linea[2]."</td>";
			echo "<td>".$linea[3]."</td>";
			//Divido las fechas en dia, mes y año para mostrarlo en ese orden.
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
		}
		echo "</table>";
	}
	fclose($fp);
}
echo "<br>";
?>
<center><h2><a href="index.html">Volver al Inicio</a></h2></center>
</body>
</html>