<!DOCTYPE html>
<html lang="es">
<head>
	<meta charset="UTF-8">
	<title>Actividad 3</title>
</head>
<body>
<h2>Fecha de nacimiento, resultado</h2>
<?
setlocale(LC_ALL,"esp_ESP");
$fecha=$_REQUEST['fecha'];
$actual=time();

$dia=substr($fecha,0,2);
$dia=intval($dia);
$mes=substr($fecha,3,2);
$mes=intval($mes);
$anyo=substr($fecha,6);
$anyo=intval($anyo);
$cumple=mktime(0,0,0, $mes , $dia, $anyo);

echo "Naciste un ".date("l",$cumple)."<br>";
$dias=0;
$anyoresult=(date("Y",$actual)-$anyo)*365;
$mesresult=(date("n",$actual)-$mes)*30;
$diaresult=(date("j",$actual)-$dia);
$dias=$anyoresult+$mesresult+$diaresult;
echo "Han transcurrido ".$dias." desde tu cumpleaños";
?>
</body>
</html>