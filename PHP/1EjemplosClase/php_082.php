<!DOCTYPE html>
<html lang="es">
<head>
	<meta charset="UTF-8">
	<title>Formulario suma</title>
</head>
<body>
<form name="formulario" method="GET" action="php_082.php">
	<h2>Dame un número: </h2><input type="number" name="n1" /><br/>
	<h2>Dame un número: </h2><input type="number" name="n2" /><br/><br/>
	<input type="submit" value="CALCULAR"/>
</form>

<?
if (isset($_REQUEST['n1'])&&isset($_REQUEST['n2'])){
	$n1=$_REQUEST['n1'];
	$n2=$_REQUEST['n2'];
	$res=$n1+$n2;
	echo "<h2>La suma de $n1 y $n2 es ".$res."</h2><br/>";
}

?>

</body>
</html>