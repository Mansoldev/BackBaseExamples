<!DOCTYPE html>
<html lang="es">
<head>
	<meta charset="UTF-8">
	<title>Actividad 2</title>
</head>
<body>
<h2>Comprobar que es fecha, resultado</h2>
<?
setlocale(LC_ALL,"esp_ESP");
$fecha=$_REQUEST['fecha'];
trim($fecha);
$dia=substr($fecha,0,2);
$delim1=substr($fecha,2,1);
$mes=substr($fecha,3,2);
$delim2=substr($fecha,5,1);
$anyo=substr($fecha,6);
echo $dia." ".$delim1." ".$mes." ".$delim2." ".$anyo."<br><br>";

if (strlen($anyo)<>4){
	echo "Al menos un campo de la fecha no tiene el numero de cifras correcto.<br>";
}

$dia=intval($dia);
if(($dia>0) AND ($dia<=31)){
	$vdia=0;
}else{
	$vdia=1;
}
$mes=intval($mes);
if(($mes>0) AND ($mes<=12)){
	$vmes=0;
}else{
	$vmes=1;
}
$anyo=intval($anyo);
if(($anyo>1900) AND ($anyo<=2015)){
	$vanyo=0;
}else{
	$vanyo=1;
}
if (($delim1<>".") AND ($delim1<>"/") AND ($delim1<>"-")){
	$vd1=1;
}else{
	$vd1=0;
}
if (($delim2<>".") AND ($delim2<>"/") AND ($delim2<>"-")){
	$vd2=1;
}else{
	$vd2=0;
}

if($vdia==0 AND $vmes==0 AND $vanyo==0 AND $vd1==0 AND $vd2==0){
	$actual=mktime(0,0,0, $mes , $dia, $anyo);
	echo "Has introducido ".date("l",$actual)." de ".date("F",$actual)." de ".date("Y",$actual);
}else{
	switch(true){
		case $vdia==1:
			echo "El formato del día <b>".$dia."</b> es incorrecto. Recuerde que los dias van desde 1 a 31.<br>";
		case $vmes==1:
			echo "El formato del mes <b>".$mes."</b> es incorrecto. Recuerde que los meses van desde 1 a 12.<br>";
		case $vanyo==1:
			echo "El formato del año <b>".$anyo."</b> es incorrecto. Los años permitidos son de 1900 a 2015.<br>";
		case $vd1==1:
			echo "El delimitador 1 que has puesto: <b>".$delim1."</b> no se admite, como separador de la fecha, utilice: . / o -<br>";
		case $vd2==1:
			echo "El delimitador 2 que has puesto: <b>".$delim2."</b> no se admite, como separador de la fecha, utilice: . / o -<br>";
	}
	echo "Recuerde que el formate de fecha valido es <b>dd/mm/aaaa</b>";
}
?>
</body>
</html>
