<html>
<head>
<title>Funciones de usuario.</title>
</head>
<body>
<?
function creaTabla($ancho, $alto, $car){
echo "<table border=2>";
	for ($i=1;$i<=$alto;$i++){
		echo '<tr>';
			for ($j=1;$j<=$ancho;$j++){
				echo "<td> $car </td>";
			}
		echo '</tr>';																						
	}
echo "<table>";
}

creaTabla(4,10,'A');
creaTabla(12,6,'*');

?>
</body>
</html>