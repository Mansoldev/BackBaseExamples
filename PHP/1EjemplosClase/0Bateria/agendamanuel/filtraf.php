
<html lang="es">
<head>
<meta charset='utf-8'>
<title>Trabajando con ficheros.</title>
</head>
<body>
<h4>Selecciona la ciudad y el máximo de registros a listar.</h4>
<hr />
<?php
$fp=fopen("files/contactos.txt","r");
if(!$fp)
   {echo "<h4>Error al Abrir el fichero.<a href='index.html'> Volver</a>.</h4>";
   }
else
   {
    while(false !== ($cadena=fgets($fp)))
	  {$linea=explode("#",$cadena);
	   $ciudades[]=$linea[2];
	  }
	print_r($ciudades);
	$ciudadesNoRepes=array_unique($ciudades);
	sort($ciudadesNoRepes);
	//print_r($ciudadesNoRepes);
	fclose($fp);
   }
?>
<form name="filtros" method="post" action="filtrar.php">
Número máximo de registros:<input type="text" name="numMaxReg" value="1" size="5" />
Selecciona Ciudad: 
<select name="Ciudad">
<option selected="selected">Todas</option>
<?php
for($i=0; $i < count($ciudadesNoRepes); $i++)
   {
		echo "<option>".$ciudadesNoRepes[$i]."</option>";
   }
?>
</select>
<br />
<input type="submit" value="Filtrar" />
<input type="reset" value="Reset" />
</form>
<h4><a href='index.html'> Volver al índice sin filtar</a>.</h4>

</body>
</html>