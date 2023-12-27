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
<script src="back.js"></script>
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
session_start();

// Muestra el echo si el usuario no se ha autenticado en el index.php
if (!isset($_SESSION['validado'])){
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

// Consultas para las distintas acciones de administrar: ME(Modificar entrada), EE(Eliminar entrada), EI (Eliminar imagen), EC (Eliminar comentario), guardadas ya en variables preparadas
$consulta="SELECT ID_Entrada,Titulo,EtiquetaPrincipal,FechaE FROM entradas";
$ME=mysqli_query($conexion,$consulta);
$consulta="SELECT ID_Entrada,Titulo,EtiquetaPrincipal,FechaE FROM entradas";
$EE=mysqli_query($conexion,$consulta);
// Solo pedimos las que sean de la galeria porque las que no están relacionadas si o si con una entrada y se borrarán junto con esta.
$consulta="SELECT ID_Imagen,Titulo,EtiquetaImagen,RutaImagen FROM imagenes WHERE Galeria=1";
$EI=mysqli_query($conexion,$consulta);
$consulta="SELECT ID_Comentario,FechaC,Titulo,Comentario FROM comentarios NATURAL JOIN entradas";
$EC=mysqli_query($conexion,$consulta);

// Pagina con echo, todos los botones y formularios.
echo "
	<div class='container-fluid'>
		<div class='row'>
		<header class='col-lg-12 col-md-12 bienvenida'><center><h3><b>Bienvenida ".$_SESSION['user']."</b></h3></center></header>
	</div>
	<div class='row'>
		<!-- MENU DE BOTONES DE LA IZQUIERDA -->
		<aside class='col-md-2 menu'>
			<br>
			<nav class='btn-group'>
			<button class='btn btn-success btn-block' onclick='IIE();'>INSERTAR ENTRADA</button><br><br>
			<button class='btn btn-primary btn-block' onclick='MME();'>MODIFICAR ENTRADA</button><br><br>
			<button class='btn btn-danger btn-block' onclick='BE();'>BORRAR ENTRADA</button><br><br>
			<button class='btn btn-success btn-block' onclick='II();'>INSERTAR IMAGEN</button><br><br>
			<button class='btn btn-danger btn-block' onclick='BI();'>BORRAR IMAGEN</button><br><br>
			<button class='btn btn-danger btn-block' onclick='BC();'>BORRAR COMENTARIO</button><br><br>
			</nav><br><br>
		</aside>
		<section class='col-md-10'>
			<div class='row'>
				<!-- FORMULARIO PARA INSERTAR ENTRADAS -->
				<article class='col-md-offset-1 col-md-10 visible' id='FIE'>
					<center><h1><b>INSERTAR ENTRADA</b></h1></center>
					<form role='form-horizontal' name='IE' method='post' action='Administracion2.php'>
						<fieldset>
							<div class='form-group row'>
	    						<label for='1' class='col-lg-2 col-md-2 col-sm-2 col-xs-2 control-label'><h4><b>TITULO</b></h4></label>
	    						<div class='col-lg-6 col-md-6 col-sm-5 col-xs-5'>
     								<input type='text' class='form-control input-lg' id='1' name='titulo' placeholder='Titulo de la entrada'>
    							</div>
    							<label for='2' class='col-lg-1 col-md-1 col-sm-2 col-xs-2 control-label'>Etiqueta Principal</label>
	    						<div class='col-lg-3 col-md-3 col-sm-3 col-xs-3'>
     								<select class='form-control' id='2' name='EEntrada'>
										<option value='Posts'>Posts</option>
										<option value='Dibujos'>Dibujos</option>
										<option value='Preguntas y Respuestas'>Preguntas y Respuestas</option>
									</select>
    							</div>
 							</div><br>
 							<div class='form-group row'>
							    <label for='3' class='col-lg-2 col-md-2 col-sm-2 col-xs-2 control-label'>Subir imagen</label>
							    <div class='col-lg-5 col-md-5 col-sm-6 col-xs-6'>
							    	<input type='file' id='3' name='imagen'>
							    </div>
							    <div class='col-lg-5 col-md-5 col-sm-4 col-xs-4'>
							    	<input type='text' class='form-control' id='1' name='tituloI' placeholder='Titulo de la imagen'>
							    </div>
							</div>
							<div class='form-group row'>
								<div class='checkbox col-lg-offset-2 col-lg-2 col-md-offset-2 col-md-2 col-sm-offset-2 col-sm-2 col-xs-offset-1 col-xs-3 control-label'>
									<input type='checkbox' id='4' name='galeria'>
							    	<label for='4'><b>¿Galeria?</b></label>
							    </div>
							    <label for='5' class='col-lg-3 col-md-3 col-sm-4 col-xs-4 control-label'>Etiqueta para la imagen</label>
	    						<div class='col-lg-2 col-md-2 col-sm-3 col-xs-4'>
     								<select class='form-control' id='5' name='EImagen'>
										<option>Ilustracion</option>
										<option>Comic</option>
										<option>Bocetos</option>
									</select>
    							</div>
							</div><br>
 							<div class='form-group row'>
 								<label for='6' class='col-lg-2 col-md-2 col-sm-2 col-xs-2 control-label'>Contenido</label>
	    						<textarea id='6' class='col-lg-9 col-md-9 col-sm-9 col-xs-9' rows='7' name='texto'></textarea>
 							</div>
 							<div class='form-group row'>
	    						<label for='7' class='col-lg-2 col-md-2 col-sm-2 col-xs-2 control-label'>Etiquetas</label>
	    						<div class='col-lg-10 col-md-10 col-sm-9 col-xs-9'>
     								<input type='text' class='form-control' id='7' name='Etiquetas' placeholder='Introduce varias etiquetas separadas por coma'>
    							</div>
 							</div><br>
 							<input type='hidden' name='opcion' value='1'/>
 							<div class='form-group row'>
			   				 	<div class='col-lg-offset-2 col-lg-5 col-md-5 col-sm-4 col-xs-3'>
			      					<button type='submit' class='btn btn-block btn-lg btn-success'>Insertar</button>
			    				</div>
							</div>
						</fieldset>
					</form>
				</article>
				<!-- FORMULARIO PARA MODIFICAR ENTRADAS -->
				<article class='col-md-offset-1 col-md-10 invisible' id='FME'>
					<center><h1><b>MODIFICAR ENTRADA</b></h1></center>
					<form role='form-horizontal' name='ME' method='post' action='Administracion2.php'>
						<fieldset>";
					echo "	<div class='row'/>
								<div class='col-md-offset-1 col-md-10 entradas'>
								<h3 align='Center'><b>LISTADO DE ENTRADAS</b></h3>
									<div class='tabla'>";
							echo	'<table class="table table-bordered table-hover" align="center" cellpadding="5" cellspacing="0">';
								echo "<center><tr><th>Elección</th><th>ID_Entrada</th><th>Titulo</th><th>EtiquetaPrincipal</th><th>FechaE</th></tr></center>";
								while($reg1=mysqli_fetch_array($ME)){
									echo "<tr><td><input type='radio' name='ID' value='$reg1[ID_Entrada]'></td><td>$reg1[ID_Entrada]</td><td>$reg1[Titulo]</td><td align='right'>$reg1[EtiquetaPrincipal]</td><td>$reg1[FechaE]</td></tr>";
								}
								echo "</table></div></div></div><br>";
					echo "	<div class='form-group row'>
	    						<label for='1' class='col-lg-2 col-md-2 col-sm-2 col-xs-2 control-label'><h4><b>TITULO</b></h4></label>
	    						<div class='col-lg-6 col-md-6 col-sm-5 col-xs-5'>
     								<input type='text' class='form-control input-lg' id='1' name='title' placeholder='Modifica el título'>
    							</div>
    							<label for='2' class='col-lg-1 col-md-1 col-sm-2 col-xs-2 control-label'>Etiqueta Principal</label>
	    						<div class='col-lg-3 col-md-3 col-sm-3 col-xs-3'>
     								<select class='form-control' id='2' name='Eti'>
										<option>Posts</option>
										<option>Dibujos</option>
										<option>Preguntas y Respuestas</option>
									</select>
    							</div>
 							</div><br>
 							<div class='form-group row'>
 								<label for='6' class='col-lg-2 col-md-2 col-sm-2 col-xs-2 control-label'>Contenido</label>
	    						<textarea id='6' class='col-lg-9 col-md-9 col-sm-9 col-xs-9' rows='5' name='contenido'></textarea>
 							</div>
 							<input type='hidden' name='opcion' value='2'/>
 							<div class='form-group row'>
			   				 	<div class='col-lg-offset-2 col-lg-5 col-md-5 col-sm-4 col-xs-3'>
			      					<button type='submit' class='btn btn-block btn-lg btn-primary'>Modificar</button>
			    				</div>
							</div>
						</fieldset>
					</form>
				</article>
				<article class='col-md-offset-1 col-md-10 invisible' id='FBE'>
					<center><h1><b>BORRAR ENTRADA</b></h1></center>
					<form role='form-horizontal' align='center' name='ME' method='post' action='Administracion2.php'>
						<fieldset>";
					echo "	<div class='row'/>
								<div class='col-md-offset-1 col-md-10 entradas'>
								<h3 align='Center'><b>LISTADO DE ENTRADAS</b></h3>
									<div class='tabla2'>";
								echo '<table class="table table-bordered table-hover" cellpadding="5" cellspacing="0">';
								echo "<center><tr><th>Elección</th><th>ID_Entrada</th><th>Titulo</th><th>EtiquetaPrincipal</th><th>FechaE</th></tr></center>";
								while($reg2=mysqli_fetch_array($EE)){
									echo "<tr><td><input type='checkbox' name='ID[]' value='$reg2[ID_Entrada]'></td><td>$reg2[ID_Entrada]</td><td>$reg2[Titulo]</td><td align='right'>$reg2[EtiquetaPrincipal]</td><td>$reg2[FechaE]</td></tr>";
								}
								echo "</table></div></div>";
					echo "	</div>
					 		<input type='hidden' name='opcion' value='3'/>
					 		<br>
 							<div class='form-group row'>
			   				 	<div class='col-lg-offset-3 col-lg-6 col-md-6 col-sm-4 col-xs-3'>
			      					<button type='submit' class='btn btn-block btn-lg btn-danger'>Eliminar</button>
			    				</div>
							</div>
						</fieldset>
					</form>
				</article>
				<article class='col-md-offset-1 col-md-10 invisible' id='FII'>
					<center><h1><b>INSERTAR IMAGEN</b></h1></center>
					<form role='form-horizontal' name='IE' method='post' action='Administracion2.php'>
						<fieldset>
							<div class='form-group row'>
								<div class='col-lg-offset-1 col-lg-5 col-md-offset-1 col-md-5 col-sm-offset-1 col-sm-6 col-xs-offset-1 col-xs-6'>
									<input type='text' class='form-control' id='1' name='tituloI' placeholder='Titulo de la imagen'>
								</div>
								<div class='col-lg-5 col-md-5 col-sm-4 col-xs-4'>
									 <input type='file' id='3' name='imagen'>
								</div>
							</div>
							<div class='form-group row'>
								<label for='5' class='col-lg-offset-1 col-lg-3 col-md-offset-1 col-md-3 col-sm-offset-3 col-sm-4 col-xs-offset-1 col-xs-4 control-label'>Etiqueta para la imagen</label>
			    				<div class='col-lg-2 col-md-2 col-sm-3 col-xs-4'>
		     						<select class='form-control' id='5' name='EImagen'>
										<option>Ilustracion</option>
										<option>Comic</option>
										<option>Bocetos</option>
									</select>
		    					</div>
							</div><br>
							<input type='hidden' name='opcion' value='4'/><br>
		 					<div class='form-group row'>
					   			<div class='col-lg-offset-2 col-lg-5 col-md-5 col-sm-4 col-xs-3'>
			      					<button type='submit' class='btn btn-block btn-lg btn-success'>Insertar</button>
			    				</div>
							</div>
						</fieldset>
					</form>
				</article>
				<article class='col-md-offset-1 col-md-10 invisible' id='FBI'>
					<center><h1><b>BORRAR IMAGEN</b></h1></center>
					<form role='form-horizontal' align='center' name='ME' method='post' action='Administracion2.php'>
						<fieldset>";
					echo "	<div class='row'/>
								<div class='col-md-offset-1 col-md-10 entradas'>
								<h3 align='Center'><b>LISTADO DE IMAGENES</b></h3>
									<div class='tabla2'>";
								echo '<table class="table table-bordered table-hover" align="center" cellpadding="5" cellspacing="0">';
								echo "<center><tr><th>Elección</th><th>ID_Imagen</th><th>Titulo</th><th>RutaImagen</th><th>EtiquetaImagen</th></tr></center>";
								while($reg3=mysqli_fetch_array($EI)){
									echo "<tr><td><input type='checkbox' name='ID[]' value='$reg3[ID_Imagen]'></td><td>$reg3[ID_Imagen]</td><td>$reg3[Titulo]</td><td>$reg3[RutaImagen]</td><td>$reg3[EtiquetaImagen]</td></tr>";
								}
								echo "</table></div></div>";
					echo "	</div>
					<input type='hidden' name='opcion' value='5'/>
					 		<br>
 							<div class='form-group row'>
			   				 	<div class='col-lg-offset-3 col-lg-6 col-md-6 col-sm-4 col-xs-3'>
			      					<button type='submit' class='btn btn-block btn-lg btn-danger'>Eliminar</button>
			    				</div>
							</div>
						</fieldset>
					</form>
				</article>
				<article class='col-md-offset-1 col-md-10 invisible' id='FBC'>
					<center><h1><b>BORRAR COMENTARIO</b></h1></center>
					<form role='form-horizontal' align='center' name='ME' method='post' action='Administracion2.php'>
						<fieldset>";
					echo "	<div class='row'/>
								<div class='col-md-offset-1 col-md-10 entradas'>
								<h3 align='Center'><b>LISTADO DE COMENTARIOS</b></h3>
									<div class='tabla2'>";
								echo '<table class="table table-bordered table-hover" align="center" cellpadding="5" cellspacing="0">';
								echo "<center><tr><th>Elección</th><th>ID_Comentario</th><th>Pertenece a la entrada</th><th>FechaC</th><th>Comentario</th></tr></center>";
								while($reg3=mysqli_fetch_array($EC)){
									echo "<tr><td><input type='checkbox' name='ID[]' value='$reg3[ID_Comentario]'></td><td>$reg3[ID_Comentario]</td><td>$reg3[Titulo]</td><td>$reg3[FechaC]</td><td>$reg3[Comentario]</td></tr>";
								}
								echo "</table></div></div>";
					echo "	</div>
					<input type='hidden' name='opcion' value='6'/>
					 		<br>
 							<div class='form-group row'>
			   				 	<div class='col-lg-offset-3 col-lg-6 col-md-6 col-sm-4 col-xs-3'>
			      					<button type='submit' class='btn btn-block btn-lg btn-danger'>Eliminar</button>
			    				</div>
							</div>
						</fieldset>
					</form>
				</article>
			</div>
		</section>
	</div>
</div>
";

}
}

?>
</body>
</html>