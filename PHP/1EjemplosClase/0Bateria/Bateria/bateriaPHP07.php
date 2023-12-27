<!DOCTYPE html>
<html lang="es">
<head>
	<meta charset="UTF-8">
	<title>BateriaPHP07</title>
</head>
<body>
<h1>Resultados de una loteria:</h1>
<?
$loteria=array(0,0,0,0,0,0);
$i=0;
while($i<=5){
	while($loteria[$i]==0){
		$posible=rand(1,49);
		$repetido="no";
		$j=0;
		while($j<>$i){
			if($posible==$loteria[$j]){
				$repetido="si";
			}
			$j++;
		}
		if($repetido=="no"){
			$loteria[$i]=$posible;
		}
	}
	$i++;
}

print_r($loteria);

?>
</body>
</html>