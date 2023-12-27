<html>
<head>
<title>Funciones de usuario.</title>
</head>
<body>
<?
function escribeAsterisco($n){
	for ($i=1;$i<=$n;$i++){
		echo "*";
	}
	echo"<br>";
}
$nume=13;
escribeAsterisco(20);
escribeAsterisco($nume);
?>
</body>
</html>