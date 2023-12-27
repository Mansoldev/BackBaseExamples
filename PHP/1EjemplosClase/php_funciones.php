<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8"/>
</head>
<body>
<h2>FUNCIONES</h2>

<?
function creaTabla($ancho, $alto, $car){
	echo "<table border='2'>";
	for ($i=1;$i<=$alto;$i++){
		echo "<tr>";
		for ($j=1;$j<=$ancho;$j++){
			echo "<td>$car</td>";
		}
		echo "</tr>";
	}
	echo "</table>";
}

creaTabla(4,10,'A');
echo "<br/>";
creaTabla(12,6,'*');
?>
</body>
</html>