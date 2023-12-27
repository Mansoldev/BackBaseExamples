<!DOCTYPE html>
<html lang="es">
<head>
	<meta charset="UTF-8">
	<title>BateriaPHP05</title>
</head>
<body>
<h1>Comprobar si es primo, resultado</h1>
<?
/*
Hacer un formulario que nos pida un número y nos indique si este número es primo o no.
*/

$op=$_REQUEST['op'];

function milprimos($primo){
	$divisor=$primo-1;
	$cont=0;
	$divisores="";
	while($divisor>1){
		if(($primo%$divisor)==0){
			$divisores=$divisores.$divisor."<br/>";
			$cont=$cont+1;
		}
		$divisor--;
	}

	if($cont==0){
		echo "El numero proporcionado ".$primo." <b>es primo.</b>";
	}else{
		echo "El numero proporcionado <b>no es primo</b> y sus divisores son:<br/>";
		echo $divisores;
	}
}

milprimos($op);

?>
</body>
</html>