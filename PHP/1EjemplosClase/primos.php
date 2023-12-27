<h2 align='center'>LOS 100 PRIMEROS NUMEROS PRIMOS</h2>
<!--<table border='1'>-->

<?
$posicion=1;
$contprimo=1;
while($posicion<=10){
	$encontrado=true;
	while($encontrado){
		for($i=1;$i<($contprimo/2);$i++){
			if($contprimo%$i==0 or $contprimo==1 or $contprimo==2){
				$escontrado=false;
				$primo=$contprimo;
			}
		}
		$contprimo++;
	}
	echo $posicion." : ".$primo."<br/>";
	$posicion++;
}
?>

<!--</table>-->