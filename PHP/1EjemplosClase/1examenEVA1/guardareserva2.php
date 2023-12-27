<!DOCTYPE html>
<html lang="es">
<head>
	<meta charset="UTF-8"/>
	<title>Guardar reserva</title>
</head>
<body>

<?
$fechaE=$_REQUEST['fechaE'];
$fechaS=$_REQUEST['fechaS'];
$user=strtoupper($_REQUEST['user']);
$tel=$_REQUEST['tel'];
if ($user==""){
	echo "<center><h3>Es obligatorio indicar aportar el usuario</h3></center>";
	if($tel==""){
		echo "<center><h3>Es obligatorio aportar el telefono</h3></center>";
	}
	echo "<center><h2>Volver al <a href='index.html'>INDICE</a></h2></center>";
}elseif($tel==""){
	echo "<center><h3>Es obligatorio aportar el telefono</h3></center>";
	echo "<center><h2>Volver al <a href='index.html'>INDICE</a></h2></center>";
}else{

	$cad="$fechaE#$fechaS#$user#$tel\r\n";
	
	$fold=fopen("reservas.txt","r");
	if(!$fold){
		echo "<center><h3>Error al abrir el fichero</h3></center>";
		echo "<center><h2>Volver al <a href='index.html'>INDICE</a></h2></center>";
	}else{
		$fnew=fopen("reservasnew.txt","w");
		$escrita="no";
		//Si acaba de crear el fichero al menos debe de leer una vez
		do{
			$linea=fgets($fold);
			//Si el fichero esta vacio, directamente que le escriba la informacion, pero comprueba si no es la ultima linea
			//echo $linea."<br>";
			if($linea=="" and !feof($fold)){
				fputs($fnew,$cad);
				break;
			}elseif(!feof($fold)){
				$atodo=explode("#",$linea);
				//Si la fecha de entrada es mayor que la leida de salida de esa linea, se escribe la linea porque va antes
				if($fechaE>$atodo[1]){
					fputs($fnew,$linea);
				//Si la fecha de entrada es menor, va antes que la linea, pero hay que comprobar que no este ya escrita, porque sino la repetiría
				}elseif($fechaE<$atodo[1] and $escrita=="no"){
					fputs($fnew,$cad);
					fputs($fnew,$linea);
					$escrita="si";
				//Aunque se cumpla que sea menor la fecha de entrada, si ya está escrita sigue rellenando del otro fichero hasta acabar
				}else{
					fputs($fnew,$linea);
				}
			}elseif($linea==""){
				fputs($fnew,$cad);
				break;
			}
		}while(!feof($fold));
		fclose($fold);
		fclose($fnew);
		rename("reservas.txt","reservasold.txt");
		rename("reservasnew.txt","reservas.txt");
		echo "<center><h3>La reserva se ha realizado con exito</h3></center>";
		echo "<center><h2>Volver al <a href='index.html'>INDICE</a></h2></center>";
	}

}
?>
</body>
</html>