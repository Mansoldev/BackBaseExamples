<?php
if (!isset($_REQUEST['newDir'])){
	$directorio="C:\\";
}else{
	$directorio=$_REQUEST['newDir'];
}
chdir($directorio);
$contenido_dir=scandir($directorio);
?>

<table border="0">
<th>Nombre</th><th>Directorio o Fichero</th><th>tipo</th><th>Tamaño</th><th>Último acceso</th>
<?
foreach ($contenido_dir as $linea){
	if (@filetype($linea)){
		echo "<tr>"; // Inico de línea
		echo "<td>".$linea."</td>";
		if (is_dir($linea)){
			echo '<td>';
			echo '<form action="navdir.php">';
			echo '<input type="hidden" name="newDir" value="'.$directorio."\\".$linea.'"></input>';
			echo '<input type="submit" value="DIRECTORIO"></imput>';
			echo '</form> </td>';
						
			
		}else{
			echo '<td>FICHERO</td>';
		}
		echo "<td>".filetype($linea)."</td>";
		echo "<td>".filesize($linea)."</td>";
		echo "<td>".date("d/m/Y - H:i:s.",fileatime($linea))."</td>";
	}
}

?>
<table>