<!DOCTYPE html>
<html lang="es">
<head>
	<meta charset="UTF-8">
	<title>Mandar email</title>
</head>
<body>
<form name="formulario" method="GET" action="php_084.php">
	<h2>Destinatario </h2><input type="email" name="d" /><br/>
	<h2>Tema: </h2><input type="text" name="t" /><br/>
	<h2>Mensaje: </h2><textarea rows="10" cols="50" name="m"> </textarea><br/><br/>
	<input type="submit" value="CALCULAR"/>
</form>
<?
if (isset($_REQUEST['d'])&&isset($_REQUEST['t'])&&isset($_REQUEST['m'])){
	$destinatario=$_REQUEST['d'];
	$tema=$_REQUEST['t'];
	$mensaje=$_REQUEST['m'];
	mail($destinatario, $tema, $mensaje);
}

?>
</body>
</html>
