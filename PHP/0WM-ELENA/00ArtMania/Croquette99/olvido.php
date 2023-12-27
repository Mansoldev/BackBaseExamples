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
<title>OLVIDO DE CONTRASEÑA</title>
<link rel="shortcut icon" href="xx.ico" type="image/ico" />
<!-- ARCHIVOS CSS Y JS -->
<link rel="stylesheet" type="text/css" href="back.css"/>
<link href="../Frameworks/bs/css/bootstrap.min.css" rel="stylesheet">
<script src="../Frameworks/bs/js/bootstrap.min.js"></script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/2.2.0/jquery.min.js"></script>
<script>window.jQuery || document.write('<script src="../Frameworks/bs/js/jquery2.js"></scr'+'ipt>')</script> 
<!-- PARA NAVEGADORES MUY ANTIGUOS -->
<!--[if lt IE 9]>
	<script src="../Frameworks/html5Shiv/dist/html5shiv.min.js"></script>
<![endif]-->
<!--[if lt IE 7]>
    <p class="browsehappy">Estas utilizando un <strong>navegador desactualizado</strong>. Por favor, <a href="http://browsehappy.com/">actualizalo</a> para mejorar tu experiencia</p>
<![endif]-->
<noscript>Tu navegador no admite Scripts, recomiendo que lo <a href="http://browsehappy.com/">actualices</a> para mejorar la experiencia.</noscript>
</head>
<body class="fondo">
<?php

$conexion=mysqli_connect("localhost", "artmania", "MANIAart#@55", "artmania");
if (mysqli_connect_errno ())
{
	echo "No se pudo conectar a MySQL: ";
	mysqli_connect_error ();
}else{


if (isset($_REQUEST['user']) AND isset($_REQUEST['mail']) AND !empty($_REQUEST['user']) AND !empty($_REQUEST['mail'])) {
	$user=$_REQUEST['user'];
	$mail=$_REQUEST['mail'];

	mysqli_query($conexion,"SET NAMES 'utf8'");
	$consulta="SELECT Usuario,Email,Password FROM login WHERE ID_User=1";
	$res=mysqli_query($conexion,$consulta);
	$reg=mysqli_fetch_array($res);
	$usuario=$reg[0];
	$email=$reg[1];
	$pass=$reg[2];

	if(($user === $usuario) AND ($mail === $email)){
		echo "Correo para ".$mail."<br />";
		$asunto="Recuperación de contraseña de $user";
		$cuerpo="Tu contraseña es: $pass";
		$headers = "MIME-Version: 1.0\r\n"; 
		$headers .= "Content-type: text/html; charset=iso-8859-1\r\n"; 
		$headers .= "From: ArtMania\r\n";
		if(mail($mail,$asunto,$cuerpo,$headers)){
			echo "Correo enviado correctamente";
		}
		else {
			echo "Ocurrió algún problema al enviar el correo.";
		} 
	}else{
		echo "Los datos introducidos son erroneos";
	}



mysqli_close($conexion);
}
}
?>
<header class="container">
<section class="row">
	<div class="col-md-offset-3 col-md-6 col-sm-offset-2 col-sm-8 col-xs-offset-1 col-xs-10 colorlogin">
		<form role="form-horizontal" name="ALogin" method="post" action="olvido.php">
		<fieldset> 			
			<center><legend><b>OLVIDO</b></legend></center>
			<div class="form-group">
	    		<label for="0" class="col-lg-3 col-md-3 col-sm-4 col-xs-4 control-label">USUARIO</label>
	    		<div class="col-lg-9 col-md-9 col-sm-8 col-xs-8">
     				<input type="text" class="form-control" id="0" name="user" placeholder="Introduce el usuario">
    			</div>
 			</div><br/><br/><br/>
 			<div class="form-group">
	    		<label for="1" class="col-lg-3 col-md-3 col-sm-4 col-xs-4 control-label">E-MAIL</label>
	    		<div class="col-lg-9 col-md-9 col-sm-8 col-xs-8">
     				<input type="text" class="form-control" id="1" name="mail" placeholder="Introduce tu email">
    			</div>
 			</div><br/><br/><br/>
 			<div class="form-group">
			    <div class="col-lg-5 col-md-5 col-sm-4 col-xs-3">
			      	<button type="submit" class="btn btn-info">Mandar email</button>
			    </div>
			</div>
		</fieldset>
		</form>
	</div>
</section>
</header>
</body>
</html>