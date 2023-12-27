<!DOCTYPE html>
<html lang="es">
<head>
	<meta charset="UTF-8">
	<title>BateriaPHP09</title>
</head>
<body>
<h1>Comprobar usuario y contraseña, resultado</h1>
<?
/*
Realizar un formulario que nos pida usuario y contraseña, y lo valide teniendo en cuenta,
que dichos valores están almacenados en array, de la siguiente manera:

Usuarios: Antonio, Juan, Sonia, Manuel, Lourdes, Fernando
Contraseñas: adr3,dfe4,dde3,dfd4,yhf7,eer8
*/
$users=array("Antonio", "Juan", "Sonia", "Manuel", "Lourdes", "Fernando");
$passs=array("adr3", "dfe4", "dde3", "dfd4", "yhf7", "eer8");

$user=$_REQUEST['user'];
$pass=$_REQUEST['pass'];

$bien="No";
for($i=0;$i<count($users);$i++){
	if(($users[$i]==$user) && ($passs[$i]==$pass)){
		$bien="Si";
	}
}

if($bien=="Si"){
	echo "Los datos introducidos <b>coinciden</b> y <b>son correctos</b>";
}else{
	echo "Los datos introducidos <b>no son correctos</b>";
}


?>
</body>
</html>