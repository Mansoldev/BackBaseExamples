<!DOCTYPE html>
<html lang="es">
<head>
	<meta charset="UTF-8">
	<title>BateriaPHP06</title>
</head>
<body>
<h1>Factorial de un número, resultado</h1>
<?
$op=$_REQUEST['op'];

function factorial($num){
	$result=$num;
	$cont=$num-1;
	while($cont!=1){
		$result=$result*$cont;
		$cont--;
	}
	return $result;
}

$resultado=factorial($op);
echo "El factorial de ".$op." es: ".$resultado;

?>
</body>
</html>