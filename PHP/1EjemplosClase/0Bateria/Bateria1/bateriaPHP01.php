<!DOCTYPE html>
<html lang="es">
<head>
	<meta charset="UTF-8">
	<title>BateriaPHP01</title>
</head>
<body>
<h1>Números entre medias, resultado</h1>

<?
/*
Realizar un formulario que nos pida dos números, y al dar sobre el botón enviar, muestre
por pantalla todos los números entre los dos.
*/

$op1=$_REQUEST['op1'];
$op2=$_REQUEST['op2'];
$mayor=0;
$menor=0;

if ($op1>$op2){
	$mayor=$op1;
	$menor=$op2;
} else {
	$mayor=$op2;
	$menor=$op1;
}

echo "De los dos Numeros: ".$op1." y ".$op2."<br/>El mayor es ".$mayor." y el menor es ".$menor."<br/>Los numero entre ellos son:<br/>";
$i=$menor+1;
while ($i<$mayor) {
	echo $i."<br/>";
	$i++;
}

?>

</body>
</html>