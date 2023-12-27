<!-- Realizar un ejercicio que lee de un fichero de texto y nos dice cuantas palabras
	tiene. Se considera palabra cualquier conjunto de caracteres separados por uno o
	más blancos. (hacerlo con fgetc y con fgets)
	 -->

<?php
	$numPalabras = 0;
	//apertura fichero esistente
	$fp = fopen('files/nuevo.log', 'r');
	//si no da error de apertura
	if (!$fp)
	{
		echo 'No se pudo abrir nuevo.log';
	}
	//lee el fichero hasta llegar al final del mismo
	echo "<br />Con fgetc():<br />";
	
	while (false !== ($caracter = fgetc($fp)))
	{
		if($caracter == " " or $caracter == "\n"){
			$numPalabras++;
			
			while($caracter == " " or $caracter == chr(13))
			$caracter = fgetc($fp);
		}			
				
	}
	//incrementamos la ultima
	$numPalabras++;
	echo "<br />Cantidad de palabras. ".$numPalabras."<br />";
	
	$numPalabras = 0;
	echo "<br />Con fgets():<br />";
	rewind($fp);
	while (($caracter = fgets($fp)) !== false)
	{
		$valor = $caracter;
		echo $valor;
		for ($x = 1; $x < strlen($valor); $x++)
		{
			if ($valor[$x] == " ")
				$numPalabras++;
		}
		//incrementamos la ultima palabra de la linea
		$numPalabras++;
	}
	echo "<br />Cantidad de palabras. ".$numPalabras."<br />";
?>