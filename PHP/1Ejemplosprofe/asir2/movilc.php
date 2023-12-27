<!DOCTYPE html>
<html lang="es">
<head>
<meta charset='utf-8'>
<title>Trabajando con ficheros.</title>
</head>
<body>
<h1>Selecciona el tipo de móvil y el precio.</h1>
<hr />
<?php
$fp=fopen("files/moviles.txt","r");
if(!$fp)
   {echo "Error al Abrir el fichero.<a href='movil.html'> Volver</a>.";
   }
else
   {
    while(false !== ($car=fgets($fp)))
	  {$linea=explode("#",$car);
	   $marcas[]=$linea[0];
	  }
	$marcasok=array_unique($marcas);
	sort($marcasok);
	//print_r($marcasok);
	fclose($fp);
   }
?>
<form name="filtros" method="post" action="movilc1.php">
Precio desde:<input type="text" name="desde" value="0" size="5" />
Precio hasta:<input type="text" name="hasta" value="9999" size="5" /><br />
Selecciona marca: 
<select name="marca">
<option selected="selected">Todas</option>
<?php
for($i=0; $i < count($marcasok); $i++)
   {echo "<option>".$marcasok[$i]."</option>";
   }
?>
</select>
<br />
<input type="submit" value="Buscar" />
</form>

</body>
</html>