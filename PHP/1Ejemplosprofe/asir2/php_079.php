<html>
<head>
<title>División.</title>
</head>
<body>
<?
function divide($dividendo,$divisor,&$resto){
	$resto=$dividendo % $divisor;
	$resultado=(int)($dividendo / $divisor);
	return $resultado;
}
// inicializamos las variables y  llamamos a la función.
$n1 =30;
$n2 =3;
$c=divide($n1,$n2,$r);
echo " $n1 dividido entre $n2 es $c y de resto $r ";

?>
</body>
</html>