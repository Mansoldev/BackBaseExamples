<!-- Realizar un ejercicio que lee de un fichero de texto de una línea y nos muestra
	un triangulo de su contenido de la siguiente forma: (hacerlo con fgetc y fgets)
	Contenido del fichero HOLA_ASIR.
	H
	HO
	HOL
	HOLA
	HOLA_
	HOLA_A
	HOLA_AS
	HOLA_ASI
	HOLA_ASIR
	HOLA_ASIR.
	 -->

<?php
	//apertura fichero esistente
	$fp = fopen('Nov92015.log', 'r');
	//si no da error de apertura
	if (!$fp)
	{
		echo 'No se pudo abrir Nov92015.log';
	}
	//lee el fichero hasta llegar al final del mismo
	echo "<br />Con fgetc():<br />";
	$aux ="";
	while (false !== ($caracter = fgetc($fp)))
	{
		if ($caracter != " ")
		{
			$aux = $aux.$caracter;
			echo "$aux<br />";
		}
		
	}
	
	echo "<br />Con fgets():<br />";
	rewind($fp);
	$aux ="";
	while (($caracter = fgets($fp, 4096)) !== false)
	{
		$valor = $caracter;
		for ($x = 1; $x < strlen($valor); $x++)
		{
			if ($valor[$x] != " ")	
			{
				$aux = $aux.$valor[$x];
				echo "$aux<br />";
			}
		}
	}
?>