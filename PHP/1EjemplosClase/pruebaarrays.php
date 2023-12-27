<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<style>
		body{font-family:arial;}
		.grande{font-size:32px;
				font-family: 'Lobster', cursive;}
	</style>
</head>
<body>
<center><table border="1">
<thead><tr><td colspan="4"><center><b><span class="grande">NOTAS DEL ALUMNO PARDILLO<span><b></center></td></tr></thead>
<tbody>
	<tr>
		<td><b>Módulo</b></td>
		<td><b>1ª Evaluación</b></td>
		<td><b>2ª Evaluación</b></td>
		<td><b>FINAL</b></td>
	</tr>
<?

$media=0;
$nmc1=0;
$nmc2=0;
$nmc3=0;
$m1=0;
$m2=0;
$m3=0;
$alumno= array(	"IAW"=>array(6,7),
				"ABD"=>array(5,8),
				"EIE"=>array(8,9),
				"ASO"=>array(8,8),
				"SRI"=>array(9,8),
				"SAD"=>array(9,9));

foreach($alumno as $I1 => $A2){
	echo "<tr><td>".$I1."</td>";
	foreach($A2 as $I2 => $Nota){
		echo "<td>".$Nota."</td>";
		$media=$media+$Nota;
		if($I2==0){
			$nmc1=$nmc1+$Nota;
		}else if($I2==1){
			$nmc2=$nmc2+$Nota;
		}
	}
	$media=$media/2;
	echo "<td>".$media."</td>";
	$nmc3=$nmc3+$media;
	$media=0;
	echo "</tr>";
}
$m1=$nmc1/6;
$m2=$nmc2/6;
$m3=$nmc3/6;
echo "<tr><td><b>MEDIAS</b></td><td>".$m1."</td><td>".$m2."</td><td>".$m3."</td></tr>"


?>
</tbody>
</table></center>
</body>
</html>

