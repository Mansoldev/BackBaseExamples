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
	
	$fold=fopen("reservas.txt","a");
	if(!$fold){
		echo "<center><h3>Error al abrir el fichero</h3></center>";
		echo "<center><h2>Volver al <a href='index.html'>INDICE</a></h2></center>";
	}else{
		//Si acaba de crear el fichero al menos debe de leer una vez
		fputs($fold,$cad);

		fclose($fold);
		echo "<center><h3>La reserva se ha realizado con exito</h3></center>";
		echo "<center><h2>Volver al <a href='index.html'>INDICE</a></h2></center>";
	}

}
?>
</body>
</html>