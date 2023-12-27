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
<body class="fondo">
<?php
session_start();
//Obtener el dia de la semana
$semana=["lunes","martes","miercoles","jueves","viernes","sabado","domingo"];
$dia=date("N")-1;
$diaSemana=$semana[$dia];
//Obtener el mes del año
$estacionesAnyo=["invierno","primavera","verano","otoño"];
?>
<div class="conatiner-fluid">
	<div class="row">
		<nav class="col-md-8 col-sm-8 col-xs-8 navegador">
			<div class="boton1 botones" onclick=location='index.php'><h4><b>Índice</b></h4></div>
			<div class="boton2 botones" onclick=location='galeria.php'><h4><b>Galeria</b></h4></div>
			<div class="boton3 botones" onclick=location='portfolio.php'><h4><b>Portafolio</b></h4></div>
			<div class="boton4 botones" onclick=location='sobremi.php'><h4><b>Sobre mi</b></h4></div>
			<div class="botonG"></div>
		</nav>
		<aside class="col-md-4 col-sm-4 col-xs-4">
			<?php
			if(isset($_SESSION['validado'])){
				echo "<div class='indexa'>
						<button class='btn btn-info'>Usuario ".$_SESSION['usuario']." </button>
						<button class='btn btn-default btn-xs' onclick='Desconectar();'><span class='glyphicon glyphicon-log-out'></span> Desconectar</button>
					</div>";
			}else{
				echo "<div class='indexa'>
					<div>
						<p>Hoy es: ";
						//imprimimos el dia de la semana obtenido.
						echo '$diaSemana';
						echo "
						</p>
					</div>
					<div>
						<p>Estamos en:";
						//imprimimos la estacion en la que nos encontramos.
						echo 'Invierno';
						echo "
						</p>
					</div>
					<div class='usuarios'>
						<a href='Usuarios/registrar.php' class='btn btn-primary' role='button'>Registrarse</a>
						<a href='Usuarios/login.php' class='btn btn-success' role='button'>Conectarse</a>
					</div>
				</div>";
			}
			?>
		</aside>
	</div>
	<div class="row">
		<section class="col-md-offset-1 col-md-10 col-sm-10 col-xs-10 indexcentral">
			<nav class="row">
				<form role="form-horizontal" name="Galeria" method="post" action="index.php">
				<div class="col-md-offset-1 col-md-2">
					<a class='btn btn-success btn-block'><input type='radio' name='filtro' value='Posts'>Posts</a>
				</div>
				<div class="col-md-2">
					<a class='btn btn-success btn-block'><input type='radio' name='filtro' value='Dibujos'>Dibujos</a>
				</div>
				<div class="col-md-3">
					<a class='btn btn-success btn-block'><input type='radio' name='filtro' value='Preguntas y Respuestas'>Preguntas y Respuestas</a>
				</div>
				<div class="col-md-3">
					<button type="submit" class="btn btn-info btn-block">FILTRAR</button>
				</div>
			</nav>
			<div class="row">
		<?php

		// En el caso de que se acceda autenticado nos conectamos a la base de datos para reazlizar acciones en ella
		$conexion=mysqli_connect("localhost", "mindundi", "mindu99", "artmania");
		if (mysqli_connect_errno ())
		{
			echo "No se pudo conectar a MySQL: ";
			mysqli_connect_error ();
		}else{
		mysqli_query($conexion,"SET NAMES 'utf8'"); // Establecemos los acentos usando utf8
		


		if(isset($_REQUEST['filtro']) AND ($_REQUEST['filtro'] !== "mas") AND ($_REQUEST['filtro'] !== "menos")){
			$filtro="WHERE EtiquetaPrincipal='".$_REQUEST['filtro']."' ";
			$entras=0;
		}elseif(isset($_REQUEST['filtro']) AND $_REQUEST['filtro'] === "mas"){
			$entras=$_SESSION['entras']+5;
			$filtro="";
		}elseif(isset($_REQUEST['filtro']) AND $_REQUEST['filtro'] === "menos"){
			$entras=$_SESSION['entras']-5;
			$filtro="";
		}else{
			$entras=0;
			$filtro="";
		}

		$_SESSION['entras']=$entras;

		$consulta="SELECT * FROM entradas $filtro LIMIT ".$entras.",5;";
		if ($res=mysqli_query($conexion,$consulta)){
			if(mysqli_num_rows($res)>0){
				while($fila = mysqli_fetch_array($res)){
					$EID_I=$fila['ID_Imagen'];
					$TituloE=strtoupper($fila['Titulo']);
					$Entrada=$fila['Entrada'];	
					echo "<div class='col-md-offset-1 col-md-10 paneles'><center>
						<div class='panel panel-success'>
							<div class='panel-heading'>
						    	<h2 class='panel-title'><b>";
					echo $TituloE;
					echo	    "</b></h2>
						  	</div>";
					$query="SELECT Titulo,RutaImagen FROM Imagenes WHERE ID_Imagen='".$EID_I."';";
					if ($res2=mysqli_query($conexion,$query)){
						if(mysqli_num_rows($res2)>0){
							$reg=mysqli_fetch_array($res2);
							$Titulo=$reg[0];
							$RutaI=$reg[1];
							echo "<div class='panel-body'>
									<img src='".$RutaI."' width='100%' height='320px' title='".$Titulo."'/>
								</div>";
						}
					}
					
					
					echo	"<div class='panel-footer'>";
					echo $Entrada;
					echo	"</div>
						</div></center></div>";
					
				}
				echo "
					<footer class='row foter'><center>
						<a class='btn btn-success'>
							Siguientes Entradas<input type='radio' name='filtro' value='mas'>
						</a>
							<button type='submit' class='btn btn-info'>MOSTRAR</button>";
					if($entras>=5){
						echo "<a class='btn btn-success'>
							<input type='radio' name='filtro' value='menos'>Anteriores Entradas
							</a>";
					}
				echo "</center></footer>";
			}else{
				echo "
					<footer class='row foter finentradas'>
						<center>
							<button type='submit' class='btn btn-warning'>NO QUEDAN MÁS IMAGENES PARA MOSTRAR</button>
							<a class='btn btn-success'><input type='radio' name='filtro' value='menos'>Anteriores Entradas</a>
							<button type='submit' class='btn btn-info'>MOSTRAR</button>
						</center>
					</footer>";
			}
		}


		mysqli_close($conexion);
		}
		?>
		</div>
		</section>
	</div>
</div>

</body>
</html>