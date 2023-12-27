<!DOCTYPE html>
<html lang="es">
<head>
	<meta charset="UTF-8"/>
	<title>Reservas comprobando fechas</title>
</head>
<body>
<h1 align="center">Reservas comprobando fechas</h1><br>
<?
$fechaE=$_REQUEST['fechaE'];
$fechaS=$_REQUEST['fechaS'];
if ($fechaE==""){
	echo "<center><h3>Es obligatorio indicar la fecha de entrada</h3></center>";
	if($fechaS==""){
		echo "<center><h3>Es obligatorio indicar la fecha de salida</h3></center>";
	}
	echo "<center><h2><a href='disponibilidad.html'>Volver</a></h2></center>";
}elseif($fechaS==""){
	echo "<center><h3>Es obligatorio indicar la fecha de salida</h3></center>";
	echo "<center><h2><a href='disponibilidad.html'>Volver</a></h2></center>";
}
else{
	//aqui las fechas no estan vacias
	if($fechaS<=$fechaE){
		echo "<center><h3>La fecha de salida: no puede ser anterior a la fecha de entrada</h3></center>";
		echo "<center><h2><a href='disponibilidad.html'>Volver</a></h2></center>";
	}else{
		//aqui la fecha de salida es posterior a la de entrada
		$actual=mktime(0,0,0, date("n") , date("d"), date("y"));
		$Dactual=date('Y-n-d',$actual);

		if($fechaE<=$Dactual){
			echo "<center><h3>No puede realizar reservas antes de la fecha actual, revise la fecha de entrada</h3></center>";
			echo "<center><h2><a href='disponibilidad.html'>Volver</a></h2></center>";
		}else{
			//aqui la fecha es posterior a hoy
			$archivo='reservas.txt';
			if(!file_exists($archivo)){
				$control=fopen($archivo,"w+");
				fclose($control);
				$reservada="no";
			}

			$diaE=substr( $fechaE, 8, 2);
			$diaS=substr( $fechaS, 8, 2);
			$mesE=substr( $fechaE, 5, 2);
			$mesS=substr( $fechaS, 5, 2);
			$anyoE=substr( $fechaE, 0, 4);
			$anyoS=substr( $fechaS, 0, 4);
			//COMPROBAR SI YA ESTÁ RESERVADA
			$repe="no";
			$fp=fopen("reservas.txt","r");
			if(!$fp){
				echo "<center><h3>Error al abrir el fichero</h3></center>";
				echo "<center><h2>Volver al <a href='index.html'>INDICE</a></h2></center>";
			}else{
				while(!feof($fp)){
					$linea=fgets($fp);
					if($linea==""){
						break;
					}else{
						$atodo=explode("#",$linea);
						//echo "FECHAS APORTADAS: $fechaE y $fechaS<br>";
						//echo "FECHAS LEIDAS: ".$atodo[0]." y ".$atodo[1]."<br>";
						if(($fechaE>=$atodo[0] and $fechaE<$atodo[1]) or ($fechaE<$atodo[0] and $fechaS>$atodo[0])){
							$repe="si";
						}
					}
				}
			}
			fclose($fp);

			if($repe=="si"){
				echo "<center><h3>Hay una reserva entre el $diaE - $mesE - $anyoE y $diaS - $mesS - $anyoS</h3></center>";
				echo "<center><h2>Volver al <a href='index.html'>índice</a></h2></center>";
			}else{

				echo "<center><h3>ESTÁ DISPONIBLE DESDE EL $diaE - $mesE - $anyoE al $diaS - $mesS - $anyoS</h3></center>";

				echo "<center><table border='1' cellpadding='5' cellspacing='2' >
					<form name='alta' method='post' action='guardareserva.php'>
					<tr><td>Cliente</td><td><input type='text' name='user' /></td></tr>
					<tr><td>Teléfono</td><td><input type='number' name='tel' /></td></tr>
					<tr><td colspan='2'>
						<center>
							<input type='hidden' name='fechaE' value='$fechaE'>
							<input type='hidden' name='fechaS' value='$fechaS'>
							<button type='reset'>Borrar</button>
							<button type='submit'>Reservar</button>
						</center>
					</td></tr></form>
				</table></center>";

				echo "<center><h2>Volver al <a href='index.html'>INDICE</a></h2></center>";
			}

		}
	}
}

?>
</body>
</html>