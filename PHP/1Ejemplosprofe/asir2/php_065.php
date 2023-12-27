<html>
<head>
<title>Funciones con string.</title>
</head>
<body>
<?
// vamos a imprimir el código ASCII

for($i=32;$i<256;$i++){
	$car=chr($i);
	echo"<br>$i : $car";
	}
	echo ord('a');
	echo "<br>";
	echo ord('A');
	?>
</body>
</html>