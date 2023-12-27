<!DOCTYPE html>
<html lang="es-ES">
<head>
<meta http-equiv="content-type" content="text/html; charset=UTF-8"/>
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<!-- METADATOS -->
<meta name="author" content="Mario Garcia Alarcon"/>
<meta name="description" content="Página de la Artista CroquetteCat, donde pueden verse sus ilustraciones, bocetos, comics, etc..."/>
<meta name="generator" content="Sublime Text"/>
<meta name="keywords" content="Croquette Cat, Artista, Ilustradora, Bocetos, Comics, Ilustraciones"/>
<!-- PERSONALIZACION -->
<title>INDEX</title>
<link rel="shortcut icon" href="xx.ico" type="image/ico" />
<!-- ARCHIVOS CSS Y JS -->
<link rel="stylesheet" type="text/css" href="../front.css"/>
<link href="../Frameworks/w3/w3.css" rel="stylesheet">
<link href="../Frameworks/bs/css/bootstrap.min.css" rel="stylesheet">
<script src="../Frameworks/bs/js/bootstrap.min.js"></script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/2.2.0/jquery.min.js"></script>
<script>window.jQuery || document.write('<script src="../Frameworks/bs/js/jquery2.js"></scr'+'ipt>')</script> 
<script src="../front.js"></script>
<!-- PARA NAVEGADORES MUY ANTIGUOS -->
<!--[if lt IE 9]>
	<script src="Frameworks/html5Shiv/dist/html5shiv.min.js"></script>
<![endif]-->
<!--[if lt IE 7]>
    <p class="browsehappy">Estas utilizando un <strong>navegador desactualizado</strong>. Por favor, <a href="http://browsehappy.com/">actualizalo</a> para mejorar tu experiencia</p>
<![endif]-->
<noscript>Tu navegador no admite Scripts, recomiendo que lo <a href="http://browsehappy.com/">actualices</a> para mejorar la experiencia.</noscript>
</head>
<body class="fondo">
<header class="container">
<section class="row">
	<div class="col-md-offset-3 col-md-6 col-sm-offset-2 col-sm-8 col-xs-offset-1 col-xs-10 colorlogin">
	<?php

	session_start();

	$conexion=mysqli_connect("localhost", "mindundi", "mindu99", "artmania");
	if (mysqli_connect_errno ())
	{
		echo "No se pudo conectar a MySQL: ";
		mysqli_connect_error ();
	}else{

	if (isset($_REQUEST['user']) AND isset($_REQUEST['pass']) AND !empty($_REQUEST['user']) AND !empty($_REQUEST['pass']) AND isset($_REQUEST['mail']) AND !empty($_REQUEST['mail'])) {
		$user=$_REQUEST['user'];
		$pass=$_REQUEST['pass'];
		$mail=$_REQUEST['mail'];

		mysqli_query($conexion,"SET NAMES 'utf8'");
		$consulta="SELECT Usuario,Password,Email FROM login";

		if ($res=mysqli_query($conexion,$consulta)){
			while($fila = mysqli_fetch_array($res)){
				if (($fila['Password'] === $pass) OR ($fila['Email'] === $mail)){
					$error="Si";
				}else{
					$error="No";
				}
			}
		}

		if($error === "Si"){
			echo "<div class='errores'>
					<center>Ya existe un usuario con los datos pasados</center>
					<a href='registrar.php' class='btn btn-info btn-block' role='button'>Volver al registro</a>
				</div>";
		}else{
			$consulta="INSERT INTO login VALUES(NULL,'".$user."','".$pass."','".$mail."')";
			if (mysqli_query($conexion,$consulta)){
				echo "<div class='errores'>
						<center>Usuario registrado con éxito</center>
						<a href='login.php' class='btn btn-success btn-block' role='button'>Ir a login</a>
					</div>";
			}else{
				echo "<div class='errores'>
						<center>No se pudo registrar el usuario debido a un error inesperado</center>
						<a href='registrar.php' class='btn btn-info btn-block' role='button'>Volver al registro</a>
					</div>";
			}
		}

	}else{
		echo "<form role='form-horizontal' class='formu' name='Registro' method='post' action='registrar.php'>
		<fieldset> 			
			<center><legend><b>REGISTRO</b></legend></center>
			<div class='form-group'>
	    		<label for='0' class='col-lg-3 col-md-3 col-sm-4 col-xs-4 control-label'>USUARIO</label>
	    		<div class='col-lg-9 col-md-9 col-sm-8 col-xs-8'>
     				<input type='text' class='form-control' id='0' name='user' placeholder='Introduce el usuario'>
    			</div>
 			</div><br/><br/><br/>
 			<div class='form-group'>
	    		<label for='1' class='col-lg-3 col-md-3 col-sm-4 col-xs-4 control-label'>CONTRASEÑA</label>
	    		<div class='col-lg-9 col-md-9 col-sm-8 col-xs-8'>
     				<input type='password' class='form-control' id='1' name='pass' placeholder='Introduce la contraseña'>
    			</div>
 			</div><br/><br/>
 			 <div class='form-group'>
	    		<label for='3' class='col-lg-3 col-md-3 col-sm-4 col-xs-4 control-label'>CORREO</label>
	    		<div class='col-lg-9 col-md-9 col-sm-8 col-xs-8'>
     				<input type='text' class='form-control' id='3' name='mail' placeholder='Introduce el correo'>
    			</div>
 			</div><br/><br/><br/>
 			<div class='form-group'>
			    <div class='col-lg-3 col-md-3 col-sm-4 col-xs-5'>
			      	<a href='login.php' class='btn btn-success' role='button'>Ir a login</a>
			    </div>
			    <div class='col-lg-5 col-md-5 col-sm-4 col-xs-3'>
			      	<button type='submit' class='btn btn-info'>Registrarse</button>
			    </div>
			</div>
		</fieldset>
		</form>";
	}


	mysqli_close($conexion);
	}
	?>
	</div>
</section>
</header>
</body>
</html>