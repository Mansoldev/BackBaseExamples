<html>
<head>
<title>Procesado del método POST.</title>
</head>
<body>
<h2>Los datos recibidos son:</h2>
<h3>El array que recibe los datos a través del método POST</h3>
<?
foreach($_POST as $indice => $dato)
{
echo $indice." vale ".$dato."<br />";
}
?>
<h3>También podemos emplear:</h3>
<?
echo $_POST['nombre']."<br />";
echo $_POST['apellidos']."<br />";
echo $_POST['edad']."<br />";
?>
</body>
</html>