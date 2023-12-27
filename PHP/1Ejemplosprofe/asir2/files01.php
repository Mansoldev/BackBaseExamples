<!-- Realizar un ejercicio que nos cuenta el numero de caracteres de un fichero e
	 indica cuúntos de ellos son alfabéticos y cuúntos numúricos. (hacerlo con fgetc y
	con fegts, de las dos formas)	
	 -->

<html>
	<head><meta charset="utf-8">
	<title>Contador de letras y números</title>
	</head>
	<body>
	<?php
		$numLetras = 0;
		$numNumeros = 0;
		//apertura fichero esistente
		$fp = fopen('files/nuevo.log', 'r');
		//si no da error de apertura
		if (!$fp)
		{
			echo 'No se pudo abrir nuevo.log';
		}
		//lee el fichero hasta llegar al final del mismo
		echo "<br />Con fgetc(): hola<br />";
		while (false !== ($caracter = fgetc($fp)))
		{
			echo $caracter;
			$codAscii = ord($caracter);
			switch (true)
			{
				case $codAscii >= 65 and $codAscii <= 90:
				case $codAscii >= 97 and $codAscii <= 122:
				case $codAscii >= 128 and $codAscii <= 165:
				case $codAscii == 195:
					$numLetras++;
					break;
				case $codAscii >= 48 and $codAscii <= 57:
					$numNumeros++;
					break;
			}
		}
		echo "<br />Cantidad de números. ".$numNumeros."<br />";
		echo "Cantidad de letras. ".$numLetras."<br />";
		
		$numLetras = 0;
		$numNumeros = 0;
		echo "<br />Con fgets():<br />";
		rewind($fp);
		while (($caracter = fgets($fp)) !== false)
		{
			$valor = $caracter;
			echo $valor;
			for ($x = 0; $x < strlen($valor); $x++)
			{
				$codAscii = ord(substr($valor,$x,1));
				switch (true)
				{
					case $codAscii >= 65 and $codAscii <= 90:
					case $codAscii >= 97 and $codAscii <= 122:
					case $codAscii >= 128 and $codAscii <= 165:
					case $codAscii == 195:
						$numLetras++;
						break;
					case $codAscii >= 48 and $codAscii <= 57:
						$numNumeros++;
						break;
				}
			}
		}
		echo "<br />Cantidad de números. ".$numNumeros."<br />";
		echo "Cantidad de letras. ".$numLetras."<br />";
	?>
	</body>
</html>