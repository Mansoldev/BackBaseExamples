<html>
<head>
<title>Funciones con string 2. subcadenas</title>
</head>
<body>

<?
$cadena="Talavera de la Reina";
$cadena2=strtolower($cadena);
echo "La cadena: $cadena <br>";
echo "<br> En minúsculas: $cadena2";
$cadena2=strtoupper($cadena);
echo "<br> En mayúsculas: $cadena2";
$cadena2=ereg_replace('Reina','Princesa',$cadena);
echo "<br>La cadena: $cadena2 <br>";

?>
</body>
</html>