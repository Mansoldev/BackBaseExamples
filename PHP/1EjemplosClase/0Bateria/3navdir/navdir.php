<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8"/>
<title>Navegador de directorios</title>
</head>
<body>
<?
$dirActual="C:\";
function cambioDir($dir){
	$directorios=scandir($dir);
	echo "<table>";
	echo "<tr><th>Nombre de los directorios</th></tr>";
	For ($i=0;$i<count($directorios);$i++){
		echo "<tr><td>"$directorios[$i]"</td></tr>";
	}
	echo "</table>";
}
?>
</body>
</html>