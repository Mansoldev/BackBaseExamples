<html>
<head>
<title>Procesado del método POST.</title>
</head>
<body>
<h2>Los datos recibidos son:</h2>
<h3>El array que recibe los datos a través del método POST</h3>
<?
foreach($_REQUEST as $indice => $dato)
{
echo $indice." vale ".$dato."<br />";
}
?>
<h3>También podemos emplear:</h3>
<?
echo $_REQUEST['nombre']."<br />";
echo $_REQUEST['apellidos']."<br />";
echo $_REQUEST['edad']."<br />";
?>
</body>
</html>