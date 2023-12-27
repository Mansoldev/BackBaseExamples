<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8"/>
</head>
<body>
<h1>INSERTAR UN PRODUCTO</h1>

<form role="form" name="producto" method="post" action="jardineriaInsertar2.php">
	<fieldset> 			
		<legend>Datos del producto</legend>
		<label for="0">Codigo del producto:</label><input id="0" type="text" name="codigo" /><br/>
		<label for="1">Nombre:</label><input id="1" type="text" name="name" /><br/>
<?php
	
$conexion=mysqli_connect("localhost", "root", "", "jardineria");
// Comprobar la conexión
if (mysqli_connect_errno ())
{
echo "No se pudo conectar a MySQL: " . 
mysqli_connect_error ();
}
else
{	
	mysqli_query($conexion,"SET NAMES 'utf8'"); // Establecemos los acentos usando utf8
	$consulta="SELECT Gama FROM gamasproductos";
	if ($res=mysqli_query($conexion,$consulta)){
		echo "<label for='2'>Gama:</label>
			<select name='gama'>";

			while($fila = mysqli_fetch_array($res))
			{
					echo "<option>".$fila['Gama']."</option>";
			}


		echo "</select><br/>";
		echo "<label for='3'>Dimensiones:</label><input id=3' type=text name='dimen' /><br/>";

	}else{
		echo "<br> No se ha podido mostrar <br>";
	}

	$consulta="SELECT DISTINCT Proveedor FROM productos";
	if ($res=mysqli_query($conexion,$consulta)){
		echo "<label for='4'>Proveedor:</label>
			<select name='proveedor'>";

			while($fila = mysqli_fetch_array($res))
			{
					echo "<option>".$fila['Proveedor']."</option>";
			}


		echo "</select><br/>";

	}else{
		echo "<br> No se ha podido mostrar <br>";
	}

mysqli_close($conexion);
}
?>
		
		<label for="5">Descripción:</label><textarea id="5" rows="10" cols="50" name="descrip"> </textarea><br/>
		<label for="6">Cantidad en Stock: </label><input id="6" type="number" name="stock" /><br/>
		<label for="7">Precio de venta: </label><input id="7" type="text" name="Pventa" /><br/>
		<label for="8">Precio de proveedor: </label><input id="8" type="text" name="Pprove" /><br/>
		<br/>
		<button type="reset">RESET</button>
		<button type="submit">VALIDAR</button>
	</fieldset>
</form>
<p><a href="index.html">VOLVER AL INDICE</a></p>
</body>
</html>