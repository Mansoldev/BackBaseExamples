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
echo "No se pudo conectar a MySQL: "; 
mysqli_connect_error ();
}
else
{
	echo "<h1 align=\"Center\">LISTADO DE PRODUCTOS</H1>";
	// vamos a listar los productos:
	mysqli_query($conexion,"SET NAMES 'utf8'"); // Establecemos los acentos usando utf8
	$consulta="SELECT * FROM productos";
	if ($res=mysqli_query($conexion,$consulta)){
			echo '<table border="3" align="center" cellpadding="5" cellspacing="0">';
			echo "<tr><th>Código Producto</th><th>Nombre</th><th>Precio Venta</th><th>Gama</th></tr>";
			while($reg=mysqli_fetch_array($res)){
				echo "<tr><td>$reg[CodigoProducto]</td><td>$reg[Nombre]</td><td align=\"right\">$reg[PrecioVenta] €</td><td>$reg[Gama]</td></tr>";
		
			}
			echo "</table>";
	}else{
		echo "<br> error no hay consultas <br>";
		}
	
	
mysqli_close($conexion);
}


?>
<p><a href="index.html">VOLVER AL INDICE</a></p>
</body>
</html>