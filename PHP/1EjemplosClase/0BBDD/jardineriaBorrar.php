<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8"/>
<style>
.overflow{
	margin:0px auto;
	top:0px;
	width:700px;
	height:400px;
	padding:10px;
	text-align:justify;
	overflow:scroll;
	overflow-x: hidden;
	border:1px black solid;
	}
.boton{
	margin:0px auto;
	top:0px;
	width:700px;
	padding:10px;
	text-align:justify;
	border:1px black solid;
}
</style>
</head>
<body>
<h1 align="Center">BORRADO DE PRODUCTOS</h1>
<?php
//Empezamos con las BD.
$conexion=mysqli_connect("localhost", "root", "", "jardineria");
if (!isset($_REQUEST['codigo'])){

	if (mysqli_connect_errno ())
	{
		echo "No se pudo conectar a MySQL: ";
		mysqli_connect_error ();
	}else{
		echo "<div class='overflow'>";
		// vamos a listar los productos:
		mysqli_query($conexion,"SET NAMES 'utf8'"); // Establecemos los acentos usando utf8
		$consulta="SELECT * FROM productos";
		if ($res=mysqli_query($conexion,$consulta)){
			echo "<form role='form' name='producto' method='post' action='jardineriaBorrar.php'>";
			echo '<table border="3" align="center" cellpadding="5" cellspacing="0">';
			echo "<tr><th>Elección</th><th>Código Producto</th><th>Nombre</th><th>Precio Venta</th><th>Gama</th></tr>";
			while($reg=mysqli_fetch_array($res)){
				echo "<tr><td><input type='checkbox' name='codigo[]' value='$reg[CodigoProducto]'></td><td>$reg[CodigoProducto]</td><td>$reg[Nombre]</td><td align=\"right\">$reg[PrecioVenta] €</td><td>$reg[Gama]</td></tr>";
		
			}
			mysqli_free_result($res);
			echo "</table>";
			echo "</div>";
			echo "<div class='boton'>";
			echo "<center><button type='submit'>VALIDAR</button></center>";
			echo "</form></div>";
		}else{
			echo "<br> error no hay consultas <br>";
		}
	
	}
}else{

	$codigs=$_REQUEST['codigo'];
	$cont=1;
	for($i=0;$i<count($codigs);$i++){
		if ($cont==1){
			$codigos="CodigoProducto='$codigs[$i]'";
		}else{
			$codigos=$codigos." OR CodigoProducto='$codigs[$i]'";
		}
		$cont++;
	}

		mysqli_query($conexion,"SET NAMES 'utf8'"); // Establecemos los acentos usando utf8
		$consulta="DELETE FROM productos WHERE $codigos";
		/*
		$codigos='$codigs[0]','$codigs[1]';
		$consulta="DELETE FROM productos CodigoProducto IN ($codigos)";
		*/
		mysqli_query($conexion,$consulta);
		echo "$consulta";

}
mysqli_close($conexion);
?>

<p><a href="index.html">VOLVER AL INDICE</a></p>
</body>
</html>