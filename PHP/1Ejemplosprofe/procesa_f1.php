<html>
<head><meta charset="utf-8">
<title>Procesado del método Get.</title>
</head>
<body>
<h2>Los datos recibidos son:</h2>
<h3>El array que recibe los datos a través de la URL es $_GET</h3>
<?
foreach($_GET as $indice => $dato)
{
echo $indice." vale ".$dato."<br />";
}
?>
<h3>También podemos emplear:</h3>
<?
echo $_GET['nombre']."<br />";
echo $_GET['apellidos']."<br />";
echo $_GET['edad']."<br />";
?>
</body>
</html>