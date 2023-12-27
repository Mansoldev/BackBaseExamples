<html>
<head>
<title>Funciones con string. Parte 3.</title>
</head>
<body>
<?
$texto = "Esto es una prueba de cadena con explode";
$separados = explode(' ',$texto);
print_r($separados);

echo "<br>Despues de ponerlo juntos con implode<br>";
$juntos=implode('-',$separados);
echo"<br>$juntos<br>";
print_r($juntos);


?>
</body>
</html>