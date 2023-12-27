<html>
<head>
<title>Paso de parámetros por valor.</title>
</head>
<body>
<?
function intercambia(&$p1,&$p2){
	$c=$p1;
	$p1=$p2;
	$p2=$c;
}
// inicializamos las variables y  llamamos a la función.
$n1 =10;
$n2 =15;
echo "<br> En el programa antes de llamar a la función<br>n1: $n1 y n2: $n2";
intercambia($n1,$n2);
echo "<br><br> Despues de llamar a la función<br>n1: $n1 y n2: $n2 ";

?>
</body>
</html>