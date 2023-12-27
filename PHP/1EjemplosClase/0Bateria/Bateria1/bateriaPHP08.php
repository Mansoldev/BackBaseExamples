<!DOCTYPE html>
<html lang="es">
<head>
	<meta charset="UTF-8">
	<title>BateriaPHP08</title>
</head>
<body>
<h1>Número combinatorio de m y n, resultado</h1>
<?
/*
Haremos un formulario para que lea los valores de m y n, y con un botón se calcule dicho
valor, teniendo en cuenta que el número de combinaciones de la lotería primitiva, son
combinaciones de 49 elementos tomados de 6 en 6, es decir m=49 y n=6. Indica cuantas
combinaciones son posibles.
*/

$m=$_REQUEST['m'];
$n=$_REQUEST['n'];

function factorial($num){
	$result=$num;
	$cont=$num-1;
	while($cont!=1){
		$result=$result*$cont;
		$cont--;
	}
	return $result;
}

$resta=$m-$n;
$dividendo=factorial($m);
$divisor=factorial($n)*factorial($resta);
$resultado=$dividendo/$divisor;
echo "El numero combinatorio de ".$m." y ".$n." es: <b>".$resultado."</b>";

?>
</body>
</html>