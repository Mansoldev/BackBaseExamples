<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8"/>
</head>
<body>
<?php
//Empezamos con las BD.

$conexion=mysqli_connect("localhost", "root", "", "jardineria");
// Comprobar la conexión
if (mysqli_connect_errno ())
{
echo "No se pudo conectar a MySQL: " . 
mysqli_connect_error ();
}
else
{	
	$codigo=$_REQUEST['codigo'];
	$name=$_REQUEST['name'];
	$gama=$_REQUEST['gama'];
	$dimen=$_REQUEST['dimen'];
	$prove=$_REQUEST['proveedor'];
	$descrip=$_REQUEST['descrip'];
	$stock=$_REQUEST['stock'];
	$Pventa=$_REQUEST['Pventa'];
	$Pprove=$_REQUEST['Pprove'];

	echo "<h1 align=\"Center\">INSERTAR UN PRODUCTO</H1>";
	// vamos a listar los productos:
	mysqli_query($conexion,"SET NAMES 'utf8'"); // Establecemos los acentos usando utf8
	$consulta="INSERT INTO jardineria.productos (CodigoProducto, Nombre, Gama, Dimensiones, Proveedor, Descripcion,CantidadEnStock, PrecioVenta, PrecioProveedor) VALUES ('$codigo','$name','$gama','$dimen','$prove','$descrip','$stock','$Pventa','$Pprove')";
	if (mysqli_query($conexion,$consulta)){
			echo 'Producto '.$name.' insertado';
	}else{
		echo "<br> No se ha podido insertar <br>";
	}
	
	
mysqli_close($conexion);
}


?>
<p><a href="index.html">VOLVER AL INDICE</a></p>
</body>
</html>