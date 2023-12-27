<html>
<head>
<title>Funciones de usuario.</title>
</head>
<body>
<?
function escribeLinea($n){
	for ($i=1;$i<=$n;$i++){
		echo '_';
	}
	echo"<br>";
}
function escribeLineaIntena($n){
	echo "|";
	for ($i=2;$i<$n;$i++){
		echo '&nbsp ';
	}
	echo"|<br>";
}

function escribeCuadrado($lado){
echo "<br>Escribiendo cuadrado de $lado asteriscos de lado<br>";
escribeLinea($lado);
	for ($i=2;$i<$lado;$i++){
		escribeLineaIntena($lado);
	}
escribeLinea($lado);
}

escribeCuadrado(4);
escribeCuadrado(10);

?>
</body>
</html>