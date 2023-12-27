<html>
<head>
<title>Separando los valores y los índices en un array asociativo.</title>
</head>
<body>

<?
$DiasMes = array ('Enero' => 31, 'Febrero' => 28, 'Marzo' => 31, 'Abril' => 30,
'Mayo' => 31, 'Junio' => 30, 'Julio' => 31, 'Agosto' => 31,
'Septiembre' => 30, 'Octubre' => 31, 'Noviembre' => 30,
'Diciembre' => 31);

$valores = array_values($DiasMes);
$indices= array_keys($DiasMes);
echo "Los dias de cada mes son:<br />";
print_r($valores);
echo "<hr>";
echo "Los meses son: <br />";
print_r($indices);

?>
</body>
</html>
