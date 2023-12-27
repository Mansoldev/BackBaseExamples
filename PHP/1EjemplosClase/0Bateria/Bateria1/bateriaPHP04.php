
<!DOCTYPE html>
<html lang="es">
<head>
	<meta charset="UTF-8">
	<title>BateriaPHP03</title>
</head>
<body>
<h1>Los 1000 primeros primos:</h1>
<?
/*
Crear una función para ver si un número es primo, calcular los primos menores de 1000
usando esta función.
*/

// $cont va sumandose uno para alcanzar la cifra que sea el primo numero mil, empieza en 2 porque el uno no se considera primo,
// $conprimos solo cuenta los primos, cuando llegue a 1000 termina la función y $primos almacena los que se determina que son primos 
// para mostrarlos al final.

function milprimos(){
	$contprimos=0;
	$cont=2;
	$primos="";
	while($contprimos<1000){
		$divisor=$cont-1;
		$esprimo=0;
		while($divisor>1){
			if(($cont%$divisor)==0){
				$esprimo=1;
			}
			$divisor--;
		}

		if($esprimo==0){
			$primos=$primos." ".$cont;
			$contprimos=$contprimos+1;
		}

		$cont=$cont+1;
	}
	echo $primos;
	
}

milprimos();
?>
</body>
</html>