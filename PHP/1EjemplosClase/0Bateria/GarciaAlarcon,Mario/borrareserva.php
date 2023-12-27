<!DOCTYPE html>
<html lang="es">
<head>
	<meta charset="UTF-8"/>
	<title>Borrar reservas</title>
</head>
<body>
<?
@$registros=$_REQUEST["posicion"];
if ($registros==""){
	echo "<center><h3>No has seleccionado ninguna reserva para anular</h3></center>";
	echo "<center><h2><a href='anulareserva.php'>VOLVER</a></h2></center>";
}else{


if(file_exists("reservas.txt")){
	$fold=fopen("reservas.txt","r");
	$fnew=fopen("reservasnew.txt","w");
	if(!$fold || !$fnew){
		echo "Error de apertura de archivos.";
	}else{
		$numero=1;
		while (false!==($registro=fgets($fold))){
			$encontrado=false;
			for($i=0;$i<count($registros)&& !$encontrado;$i++){
				if($registros[$i]==$numero){ 
						$encontrado=true;
				}
			}
			if(!$encontrado){
				fputs($fnew,$registro);
			}	
			$numero++;
		}
		fclose($fold);
		fclose($fnew);
		rename("reservas.txt","reservasold.txt");
		rename("reservasnew.txt","reservas.txt");

	} 	
}


echo "<center><h3>Las reservas han sido anuladas</h3></center>";
echo "<center><h2>Volver al <a href='index.html'>INDICE</a></h2></center>";
}
?>
</body>
</html>