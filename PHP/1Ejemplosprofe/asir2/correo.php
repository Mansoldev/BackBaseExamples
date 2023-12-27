<html lang="es">
<head>
<meta charset="utf-8">
<title>Envio de correo electrónico</title>

</head>
<form name="formulariocorreo" action="correo.php" method="GET">
	<h2>Introduce destinatario:<h2><input type="email" name="destinatario" ><br>
	<h2>Introduce asunto      :<h2><input type="text" name="asunto" ><br>
	<h2>Introduce asunto      :</h2><textarea name="mensaje" rows="20" cols="80"></textarea><br>
	<input type="reset" value= "Limpiar" size=12><br>
	<input type="submit" value="Enviar" size=12><br>
</form>



<?php

	

if(isset($_GET['destinatario'])&&$_GET['destinatario']!=''){
	if (mail($_GET['destinatario'],$_GET['asunto'],$_GET['mensaje'],'From:manueldecastro@riberadeltajo.es')){
			echo "el mensaje se ha enviado con exito";
	}
}
	
?>

<html>