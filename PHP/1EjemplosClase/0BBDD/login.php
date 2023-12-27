<!DOCTYPE html>
<html lang="es">
<head>
	<meta charset="UTF-8">
	<title>Login</title>
	<style>
		div{	margin-top: 200px;
				margin-left: 25%;
				width:50%;
				padding:15px;
				background-color: cyan;
				text-align:center;}
	</style>
</head>
<body>
<h1 align="Center">BORRADO DE PRODUCTOS</h1>
<?
//Empezamos con las BD.
session_start();


$conexion=mysqli_connect("localhost", "root", "", "jardineria");
if (mysqli_connect_errno ()){
	echo "No se pudo conectar a MySQL: ";
	mysqli_connect_error ();
}else{
	mysqli_query($conexion,"SET NAMES 'utf8'"); // Establecemos los acentos usando utf8
	
	if (!isset($_REQUEST['user']) AND !isset($_REQUEST['pass']){
		echo "<div><form role=form' name='producto' method='post' action='login.php'>
			<fieldset> 			
				<legend>login</legend>
				<label for='0'>Nombre de usuario:</label><input id='0' type='text' name='user' /><br/>
				<label for='1'>Password:</label><input id='1' type='password' name='pass' /><br/>"
		if (isset($_SESSION['user'])) {
			echo "El usuario ."$_SESSION['user']." y la contraseña no coinciden";
		}
		echo "</fieldset>
		</div>";
		
	}else{
		$user=$_REQUEST['user'];
		$pass=$_REQUEST['pass'];
		$_SESSION["user"] = $user; 
		$consulta="SELECT * FROM usuarios";
		if ($res=mysqli_query($conexion,$consulta)){
			while($fila = mysqli_fetch_array($res)){
				if ($fila['usuario'] === $user){
					if($fila['password'] === $pass){
						$_SESSION['validado']=true;
					}else{
						header()
					}
				}
			}
		}

	echo "user definido";
	}
}
mysqli_close($conexion);

?>	
</body>
</html>
