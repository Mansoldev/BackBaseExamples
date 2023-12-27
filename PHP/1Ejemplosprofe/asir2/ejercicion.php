<?
$n1=$_POST['n1'];
$n2=$_POST['n2'];
foreach($_R as $indice => $valor)
{
	echo $indice." ".$valor."<br>";
}


if ($_POST['suma']=="on")
{
	$num=$n1+$n2;
	echo "<h1>el resultado de la suma es: <br>".$num."</h1><br>";
};
if ($_POST['resta']=="on")
{
	$num=$n1-$n2;
	echo "<h1>el resultado de la resta es: <br>".$num."</h1><br>";
};
if ($_POST['mult']=="on")
{
	$num=$n1*$n2;
	echo "<h1>el resultado de la multiplicacion es: <br>".$num."</h1><br>";
};
if ($_POST['divi']=="on")
{
	$num=$n1+$n2;
	echo "<h1>el resultado de la division es: <br>".$num."</h1><br>";
}

?>