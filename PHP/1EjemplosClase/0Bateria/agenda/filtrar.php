<!DOCTYPE html>
<html lang="es">
<head>
	<meta charset="UTF-8"/>
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<link rel="stylesheet" type="text/css" href="mario.css"/>
    <!-- Bootstrap -->
    <link href="bootstrap3/css/bootstrap.min.css" rel="stylesheet">
	<link rel="stylesheet" href="w3full.css">
	<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
    <script src="bootstrap3/js/jquery2.js"></script>
    <!-- Include all compiled plugins (below), or include individual files as needed -->
    <script src="bootstrap3/js/bootstrap.min.js"></script>
	<style>
	body				{box-sizing:border-box;
						background-color:#217a94;margin:50px;}
	section				{background-color:#fff;width:65%;margin:auto;}
	div .titulo			{padding-top:10px;} 
	div .tit			{border-radius:15px;text-align:center;
						width:80%;margin:auto;}
	div .central		{width:30%;margin:auto;padding-bottom:15px;}
	legend				{text-align:center}
	select				{float:right}
	form				{border:1px solid gray;}
	.reset				{float:right;}
	</style>
</head>
<body>
<section class=" w3-card-16">
  <div>
	<div class="titulo"><div class="tit gris5-r"><h1>AGENDA DE CONTACTOS: FILTRAR AMIGOS</h1></div></div>
	<?php
	$fp=fopen("users.txt","r");
	if(!$fp){
		echo "<div class='alert alert-warning alert-dismissable'><button type='button' class='close' data-dismiss='alert'>&times;</button><strong>¡Cuidado!</strong> No se ha podido leer el fichero</div><a href='index.html'><button type='button' class='btn btn-info btn-lg'>VOLVER AL ÍNDICE</button></a><br><br>";
    }else{
   		while(false !== ($car=fgets($fp))){
   			$linea=explode("#",$car);
	   		$codigof[]=$linea[0];
	   		$pobf[]=$linea[4];
	  	}
		$codigos=array_unique($codigof);
		$pobs=array_unique($pobf);
		sort($codigos);
		//print_r($marcasok);
		fclose($fp);
  	}
	?>
	<div class="central">
		<form role="form" class="form-horizontal naranja5-r" name="numeros" method="post" action="filtrar2.php">
			<fieldset> 			
			<legend>Datos para filtrar</legend>
				<label for="1">Código:</label>
					<select name="cod">
					<option selected="selected">Todos</option>
					<?php
					for($i=0; $i < count($codigos); $i++){
						echo "<option>".$codigos[$i]."</option>";
 					}
					?>
					</select>
				<br/>
				<label for="4">Población:</label>
					<select name="pob">
					<option selected="selected">Todas</option>
					<?php
					for($i=0; $i < count($pobs); $i++){
					echo "<option>".$pobs[$i]."</option>";
 					}
					?>
					</select>
				<br/>
			<br/>
			<button type="reset" class="btn btn-default reset">RESET</button>
			<button type="submit" class="btn btn-default reset">VALIDAR</button>
			</fieldset>
		</form>

	</div>
	<center><h2><a href="index.html">Volver al indice</a></h2></center><br>
  </div>
</section>
</body>
</html>