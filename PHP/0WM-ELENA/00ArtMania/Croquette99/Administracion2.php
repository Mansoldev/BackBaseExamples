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
<title>Administración</title>
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
<div class='container-fluid'>
		<div class='row'>
<?php	
	session_start();
	echo" <header class='col-lg-12 col-md-12 bienvenida'><center><h3><b>Bienvenida ".$_SESSION['user']."</b></h3></center></header>"
?>
	</div>
	<div class='row'>
		<section class='col-md-offset-1 col-md-10'>
			<div class='row'>
				<article class='col-md-offset-1 col-md-10 resultado'>
<?php

// Muestra el echo si el usuario no se ha autenticado en el index.php
if (!isset($_SESSION['validado']) OR !isset($_REQUEST['opcion'])){
	echo "<center><h1><b>PÁGINA EN CONSTRUCCIÓN</b></h1></center>";
}else{

// En el caso de que se acceda autenticado nos conectamos a la base de datos para reazlizar acciones en ella
$conexion=mysqli_connect("localhost", "artmania", "MANIAart#@55", "artmania");
if (mysqli_connect_errno ())
{
	echo "No se pudo conectar a MySQL: ";
	mysqli_connect_error ();
}else{

mysqli_query($conexion,"SET NAMES 'utf8'"); // Establecemos los acentos usando utf8


// Comprobamos de que formulario venimos, porque todos tienen un campo hidden con un valor único
switch($_REQUEST['opcion']){
	//INSERTAR EN LA TABLA ENTRADAS	
	case 1: 
		//1º en la tabla entradas, luego imagenes y luego etiquetas (procesar etiquetas: quitar espacios y a minusculas, solo insertar si no están en la tabla.)
		echo "<div class='row'>
				<div class='col-lg-offset-1 col-lg-9 col-md-9 col-sm-7 col-xs-5'>
		";

			echo "EN DESARROLLO...";

		/*
		if(!isset())
		$ID_entrada='';
		$titulo1='';
		$entrada='';
		$etiqueta1='';
		$fechaE=date();
		if(!isset($_REQUEST['imagen'])){
			$IDImagen="NULL";
		}else{

		}

		$titulo1=$_REQUEST['titulo'];
		$texto1=$_REQUEST['texto'];
		$EEntrada1=$_REQUEST['EEntrada'];
		$fechaE=date();
		
		$Etiquetas1=$_REQUEST['Etiquetas'];
		$consulta="INSERT INTO artmania.entradas (ID_Entrada, Titulo, Entrada, EtiquetaPrincipal, FechaE, ID_Imagen) VALUES ('','$titulo1','$texto1','$EEntrada','$fechaE','$IDImagen')";
		//Insertar en tabla imagenes
		$tituloI1=$_REQUEST['tituloI'];
		$galeria1=$_REQUEST['galeria'];
		$EImagen1=$_REQUEST['EImagen'];*/
		echo "</div></div>";
	break;
	//MODIFICAR LA TABLA ENTRADAS	
	case 2: 
		echo "<div class='row'>
				<div class='col-lg-offset-1 col-lg-9 col-md-9 col-sm-7 col-xs-5'>
		";

		if(!empty($_REQUEST['ID'])){
			$id=$_REQUEST['ID'];

			$resultado='';
			$error='';
			$query='';
			if(!empty($_REQUEST['title'])){
				$query="Titulo = '".$_REQUEST['title']."'";
				$resultado="- Se modificó <b>el titulo</b> de la entrada<br>";
			}
			if(!empty($_REQUEST['contenido'])){
				if(!empty($query)){
					$query=$query.", ";
				}
				$query=$query."Entrada = '".$_REQUEST['contenido']."'";
				$resultado=$resultado."- Se modificó <b>el contenido</b> de la entrada<br>";
			}
			if(($_REQUEST['Eti'] === 'Posts') OR ($_REQUEST['Eti'] === 'Dibujos') OR ($_REQUEST['Eti'] === 'Preguntas y Respuestas')){
				if(!empty($query)){
					$query=$query.", ";
				}
				$query=$query."EtiquetaPrincipal = '".$_REQUEST['Eti']."' ";
			}else{
				$error=$error."- La etiqueta introducida no es valida.<br>".$_REQUEST['Eti'];
			}

			if($error == ''){

				$consulta="UPDATE entradas SET $query WHERE ID_Entrada='$id';";
				mysqli_query($conexion,$consulta);
				
				echo "<center><p>La modificación se ha realizado con exito:</p></center>";
				echo "<center><p>$resultado</p></center><br>";
				echo "<center><p>Se ejecuto la siguiente orden:</p></center>";
				echo "<center><p>$consulta</p></center>";
			}else{
				echo "<center><b>ERROR, no has instroducido todos los valores necesarios:</b><br><br>".$error."</center>";
			}
		}else{
			echo "<center><b><p>No has seleccionado ninguna entrada para modificar.</p></b></center>";
		}

		echo "</div></div>";
	break;
	// BORRAR DE LA TABLA ENTRADAS
	case 3: 
		echo "<div class='row'>
				<div class='col-lg-offset-1 col-lg-9 col-md-9 col-sm-7 col-xs-5'>
		";

		if(!empty($_REQUEST['ID'])){
			$is=$_REQUEST['ID'];

			$cont=1;
			for($i=0;$i<count($is);$i++){
				if ($cont==1){
					$IDs="ID_Entrada='$is[$i]'";
				}else{
					$IDs=$IDs." OR ID_Entrada='$is[$i]'";
				}
				$cont++;
			}
			//Antes de borrar la entrada hay que borrar los comentarios y la tabla de union de etiquetas que compartan
			//ese ID con ellas. No borra las etiquetas puesto que podran ser utilizadas por otras entradas en el futuro
			//ni las imagenes, dado que se pueden mostrar en la galeria sin ninguna necesidad de entrada.
			$consulta="DELETE FROM entradas_etiquetas WHERE $IDs";
			mysqli_query($conexion,$consulta);
			$consulta="DELETE FROM comentarios WHERE $IDs";
			mysqli_query($conexion,$consulta);
			$consulta="DELETE FROM entradas WHERE $IDs";
			mysqli_query($conexion,$consulta);
			
			//IMPORTANT echo $resul;
			echo "<center><p>El borrado se ha realizado con éxito, se ha ejecutado la consulta:</p></center>";
			echo "<center><p>$consulta</p></center>";
		}else{
			echo "<center><b><p>No has seleccionado ninguna entrada para borrar.</p></b></center>";
		}
		
		
		echo "</div></div>";
	break;
	//INSERTAR EN LA TABLA IMAGENES
	case 4: 
		echo "<div class='row'>
				<div class='col-lg-offset-1 col-lg-9 col-md-9 col-sm-7 col-xs-5'>
		";

		$error='';
		if(empty($_REQUEST['tituloI'])){
			$error="- Te falta insertar <b>el titulo</b><br>";
		}else{
			$titulo=$_REQUEST['tituloI'];
		}
		if(empty($_REQUEST['imagen'])){
			$error=$error."- Te falta insertar <b>la imagen</b><br>";
		}else{
			$RutaI=$_REQUEST['imagen'];
		}
		if(($_REQUEST['EImagen'] !== 'Ilustracion') OR ($_REQUEST['EImagen'] !== 'Comic') OR ($_REQUEST['EImagen'] !== 'Bocetos')){
			$error=$error."- la etiqueta introducida no es valida.<br>";
		}else{
			$EtiquetaI=$_REQUEST['EImagen'];
		}
		$galeria='1'; 

		if($error == ''){
			$consulta="INSERT INTO `imagenes` (`ID_Imagen`, `Titulo`, `EtiquetaImagen`, `RutaImagen`, `Galeria`) 
			VALUES (NULL, $titulo, $EtiquetaI, $RutaI, $galeria),";
			mysqli_query($conexion,$consulta);
			
			echo "<center><p>La inserción se ha realizado con éxito, se ha ejecutado la consulta:</p></center>";
			echo "<center><p>$consulta</p></center>";
		}else{
			echo "<center><b>ERROR, no has instroducido todos los valores necesarios:</b><br><br>".$error."</center>";
		}

		
		echo "</div></div>";
	break;
	//BORRAR DE LA TABLA IMAGENES
	case 5: 
		echo "<div class='row'>
				<div class='col-lg-offset-1 col-lg-9 col-md-9 col-sm-7 col-xs-5'>
		";

		if(!empty($_REQUEST['ID'])){
			$is=$_REQUEST['ID'];

			$cont=1;
			for($i=0;$i<count($is);$i++){
				if ($cont==1){
					$IDs="ID_Imagen='$is[$i]'";
				}else{
					$IDs=$IDs." OR ID_Imagen='$is[$i]'";
				}
				$cont++;
			}

			$consulta="DELETE FROM imagenes WHERE $IDs";
			mysqli_query($conexion,$consulta);
			
			echo "<center><p>El borrado se ha realizado con éxito, se ha ejecutado la consulta:</p></center>";
			echo "<center><p>$consulta</p></center>";
		}else{
			echo "<center><b><p>No has seleccionado ninguna entrada para borrar.</p></b></center>";
		}
		
		
		echo "</div></div>";
	break;
	//BORRAR DE LA TABLA COMENTARIOS
	case 6: 
		echo "<div class='row'>
				<div class='col-lg-offset-1 col-lg-9 col-md-9 col-sm-7 col-xs-5'>
		";

		if(!empty($_REQUEST['ID'])){
			$is=$_REQUEST['ID'];

			$cont=1;
			for($i=0;$i<count($is);$i++){
				if ($cont==1){
					$IDs="ID_Comentario='$is[$i]'";
				}else{
					$IDs=$IDs." OR ID_Comentario='$is[$i]'";
				}
				$cont++;
			}

			$consulta="DELETE FROM comentarios WHERE $IDs";
			mysqli_query($conexion,$consulta);
			
			echo "<center><p>El borrado se ha realizado con éxito, se ha ejecutado la consulta:</p></center>";
			echo "<center><p>$consulta</p></center>";
		}else{
			echo "<center><b><p>No has seleccionado ninguna entrada para borrar.</p></b></center>";
		}
		
		
		echo "</div></div>";
	break;
}

}
}
mysqli_close($conexion);
?>
					<br><br>
					<div class='row'>
			   			<div class='col-lg-offset-3 col-lg-6 col-md-6 col-sm-4 col-xs-3'>
			      			<a href="Administracion.php"><button type='submit' class='btn btn-block btn-lg btn-primary'>VOLVER A ADMINISTRACIÓN</button></a>
			    		</div>
					</div>
				</article>
			</div>
		</section>
	</div>
</div>
</body>
</html>