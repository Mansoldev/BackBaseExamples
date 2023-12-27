<!DOCTYPE html>
<html lang="es">
<head>
	<meta charset="UTF-8">
	<title>BateriaPHP02</title>
</head>
<body>
<h1>Divisores de un número, resultado</h1>
<?
/*
Realizar un formulario que nos pida un número y nos indique todos los divisores de este número.
*/

$op=$_REQUEST['op'];
$divisor=$op-1;

echo "El numero proporcionado es: ".$op." y sus divisores son:<br/>";

while($divisor>1){
	if(($op%$divisor)==0){
		echo $divisor."<br/>";
	}
	$divisor--;
}


?>
</body>
</html>