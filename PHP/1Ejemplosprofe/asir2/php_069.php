<html>
<head>
<title>Funciones con string. Parte 4.</title>
</head>
<body>
<?
$texto[0] = "Uno";
$texto[1] = "Dos";
$texto[2] = "Tres";
$texto[3] = "Cuatro";
$texto[4] = "Cinco";
$unidos = implode('|*|',$texto);
print($unidos);
?>
</body>
</html>