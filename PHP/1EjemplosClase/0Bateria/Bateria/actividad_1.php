<!DOCTYPE html>
<html lang="es">
<head>
	<meta charset="UTF-8">
	<title>Actividad 1</title>
</head>
<body>
<h2>Proximos 20 mantenimientos</h2>
<?
//RESUTADO:
//1er mantenimiento dia XX/XX/XX de YY:YY a YY:YY
$actual=mktime(date("H"),date("i"), 0, date("n") , date("d"), date("y"));

$dias=0;
$min=10;
$mas=0;


for($i=1; $i<=20;$i++) {
	$dias=$dias+20;
	$mas=$mas+10;

	$mas10=$actual+(1*1*$mas*60);
	$pm=$mas10+($dias*24*60*60);
	$fm=$pm+(1*1*$min*60);

	echo "Mantenimiento ".$i." dia ".date('d/n/y',$pm)." de ".date('H:i',$pm)." a ".date('H:i',$fm)."<br>";
}


?>
</body>
</html>
