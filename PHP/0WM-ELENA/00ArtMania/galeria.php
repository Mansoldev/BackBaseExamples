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
<title>galeria</title>
<link rel="shortcut icon" href="xx.ico" type="image/ico" />
<!-- ARCHIVOS CSS Y JS -->
<link rel="stylesheet" type="text/css" href="front.css"/>
<link href="Frameworks/w3/w3.css" rel="stylesheet">
<link href="Frameworks/bs/css/bootstrap.min.css" rel="stylesheet">
<script src="Frameworks/bs/js/bootstrap.min.js"></script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/2.2.0/jquery.min.js"></script>
<script>window.jQuery || document.write('<script src="Frameworks/bs/js/jquery2.js"></scr'+'ipt>')</script> 
<script src="front.js"></script>
<!-- PARA NAVEGADORES MUY ANTIGUOS -->
<!--[if lt IE 9]>
	<script src="Frameworks/html5Shiv/dist/html5shiv.min.js"></script>
<![endif]-->
<!--[if lt IE 7]>
    <p class="browsehappy">Estas utilizando un <strong>navegador desactualizado</strong>. Por favor, <a href="http://browsehappy.com/">actualizalo</a> para mejorar tu experiencia</p>
<![endif]-->
<noscript>Tu navegador no admite Scripts, recomiendo que lo <a href="http://browsehappy.com/">actualices</a> para mejorar la experiencia.</noscript>
</head>
<body class="fondo container-fluid">
<header class="galemenu">
	<nav class="row">
	<form role="form-horizontal" name="Galeria" method="post" action="galeria.php">
		<div class="col-md-3">
			<a class='btn btn-info btn-block' href='index.php'>Volver al principal</a>
		</div>
		<div class="col-md-2">
			<a class='btn btn-success btn-block'><input type='radio' name='filtro' value='ilustracion'>Ilustración</a>
		</div>
		<div class="col-md-2">
			<a class='btn btn-success btn-block'><input type='radio' name='filtro' value='comic'>Comic</a>
		</div>
		<div class="col-md-2">
			<a class='btn btn-success btn-block'><input type='radio' name='filtro' value='boceto'>Bocetos</a>
		</div>
		<div class="col-md-3">
			<button type="submit" class="btn btn-info btn-block">FILTRAR</button>
		</div>
	</nav>
</header>
<section class="row gale">
<?php
session_start();

$conexion=mysqli_connect("localhost", "mindundi", "mindu99", "artmania");
if (mysqli_connect_errno ())
{
	echo "No se pudo conectar a MySQL: ";
	mysqli_connect_error ();
}else{
mysqli_query($conexion,"SET NAMES 'utf8'");

	if(isset($_REQUEST['filtro']) AND $_REQUEST['filtro'] !== "mas"){
		$filtro="AND EtiquetaImagen='".$_REQUEST['filtro']."' ";
		$entradas=0;
	}elseif(isset($_REQUEST['filtro']) AND $_REQUEST['filtro'] === "mas"){
		$entradas=$_SESSION['entradas']+12;
		$filtro="";
	}else{
		$entradas=0;
		$filtro="";
	}

	$_SESSION['entradas']=$entradas;

	$consulta="SELECT * FROM Imagenes WHERE Galeria='1' $filtro LIMIT ".$entradas.",12;";

	if ($res=mysqli_query($conexion,$consulta)){
		if(mysqli_num_rows($res)>0){
			while($fila = mysqli_fetch_array($res)){
			$Titulo=$fila['Titulo'];
			$RutaI=$fila['RutaImagen'];
			echo "<article class='imagen'>
					<img src='".$RutaI."' width='100%' height='200px' title='".$Titulo."'/>
				</article>";
			}
			echo "</section>
				<footer class='row foter'>
					<center><a class='btn btn-success'>
						<input type='radio' name='filtro' value='mas'>Siguientes Entradas
						</a>
						<button type='submit' class='btn btn-info'>MOSTRAR</button>
					</center>
				</footer>";
		}else{
			$_SESSION['entradas']=0;
			echo "</section>
				<footer class='row foter'>
					<center>
						<button type='submit' class='btn btn-warning'>NO QUEDAN MÁS IMAGENES PARA MOSTRAR</button>
					</center>
				</footer>";
		}
	}

mysqli_close($conexion);
}
?>
</form>

</body>
</html>