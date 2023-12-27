<html>
<head>
<title>Funciones de usuario.</title>
</head>
<body>
<?
function escribeAsterisco($n){
	for ($i=1;$i<=$n;$i++){
		echo "* ";
	}
	echo"<br>";
}

function escribeCuadrado($lado){
echo "<br>Escribiendo cuadrado de $lado asteriscos de lado<br>";
	for ($i=1;$i<=$lado;$i++){
		escribeAsterisco($lado);
	}
}

escribeCuadrado(4);
escribeCuadrado(6);

?>
</body>
</html>