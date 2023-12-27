<html>
<title>Formulario suma</title>
<body>

<form name"formulario" action="php_082.php" method="GET">

<h2>Introduce un número:</h2><input type="text" name="n1"><br>
<h2>Introduce un número:</h2><input type="text" name="n2"><br>
<input type="submit" value="Calcular">
</form>

<?php
if (isset($_GET['n1'])&&isset($_GET['n2'])){
	$n1=$_GET['n1'];
	$n2=$_GET['n2'];
	$res=$n1+$n2;
	echo "<h2> La suma de $n1 y $n2 es $res</h2><br>";
}

?>
</body>
</html>
