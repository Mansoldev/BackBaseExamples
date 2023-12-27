<html>
<head>
<title>Funciones con string.</title>
</head>
<body>
<?
// Los delimitadores pueden ser barra, punto o guión
$fecha = "04 30 1973";
list($mes, $día, $año) = split(' ', $fecha);
echo "Mes: $mes; Día: $día; Año: $año<br />\n";

$separados = split('[/.-]',$fecha);
print_r($separados);

?>
</body>
</html>