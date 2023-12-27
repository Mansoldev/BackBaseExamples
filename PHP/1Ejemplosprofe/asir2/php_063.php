<html>
<head>
<title>Funciones con string.</title>
</head>
<body>
<?
// Los delimitadores pueden ser barra, punto o guión
$cadena="      Hola esto es una prueba de cadenas     ";
$ncaracteres = strlen($cadena);
echo "<br>La cadena: $cadena tiene $ncaracteres<br>";

$nuevaCadena=trim($cadena);
$ncaracteres = strlen($nuevaCadena);
echo "<br>La cadena: $nuevaCadena tiene $ncaracteres<br>";
?>
</body>
</html>