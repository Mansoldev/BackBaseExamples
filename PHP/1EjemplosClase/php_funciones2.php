<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8"/>
</head>
<body>
<h2>FUNCION INTERCAMBIO</h2>

<?
function intercambiaAB(&$a, &$b){
	$aux=$b;
	$b=$a;
	$a=$aux;
	echo "Valor de \$a: ".$a." y valor de \$b: ".$b."<br/>";
}

$a="var a";
$b="var b";
echo "Valor de  \$a: ".$a." y valor de \$b: ".$b."<br/>";
intercambiaAB($a,$b);
echo "DESPUES: alor de  \$a: ".$a." y valor de \$b: ".$b."<br/>";

?>
</body>
</html>