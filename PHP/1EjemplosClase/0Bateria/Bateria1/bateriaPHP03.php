<!DOCTYPE html>
<html lang="es">
<head>
	<meta charset="UTF-8">
	<title>BateriaPHP03</title>
</head>
<body>
<h1>El número más grande, resultado</h1>
<?
/*
Realizar un formulario que leídos tres números muestre cuál de ellos es el mayor.
*/

$op1=$_REQUEST['op1'];
$op2=$_REQUEST['op2'];
$op3=$_REQUEST['op3'];
echo "De: ".$op1.", ".$op2." y ".$op3."<br/>";
if($op1>$op2){
	if($op1>$op3){
		echo "El mayor es: ".$op1;
	}else{
		echo "El mayor es: ".$op3;
	}
}else{
	if($op2>$op3){
		echo "El mayor es: ".$op2;
	}else{
		echo "El mayor es: ".$op3;
	}
}

?>
</body>
</html>