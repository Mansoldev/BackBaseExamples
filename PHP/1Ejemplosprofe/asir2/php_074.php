<html>
<head>
<title>Paso de parámetros por valor.</title>
</head>
<body>
<?
function pasoValor($p1,$p2){
	echo "<br><br> En la función<br>p1: $p1 y p2: $p2 en el momento de entrar en la función";
	$p1++;
	$p2--;
	echo "<br>p1: $p1 y p2: $p2 en el momento de entrar en la función<br>Salgo de la función";
}
// inicializamos las variables y  llamamos a la función.
$n1 =10;
$n2 =15;
echo "<br> En el programa antes de llamar a la función<br>n1: $n1 y n2: $n2";
pasoValor($n1,$n2);
echo "<br><br> Despues de llamar a la función<br>n1: $n1 y n2: $n2 ";

?>
</body>
</html>