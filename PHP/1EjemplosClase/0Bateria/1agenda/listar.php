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
	div .central		{width:50%;margin:auto;padding-bottom:15px;}
	</style>
</head>
<body>
<section class=" w3-card-16">
  <div>
	<div class="titulo"><div class="tit gris5-r"><h1>AGENDA DE CONTACTOS: LISTA DE AMIGOS</h1></div></div>
	<div class="central">
<?
function listar(){
	$fp=fopen("users.txt","r");
	if(!$fp){
		echo "<div class='alert alert-warning alert-dismissable'><button type='button' class='close' data-dismiss='alert'>&times;</button><strong>¡Cuidado!</strong> No se ha podido leer el fichero</div><a href='index.html'><button type='button' class='btn btn-info btn-lg'>VOLVER AL ÍNDICE</button></a><br><br>";
	}else{
		echo "<table class='table table-striped'> border='1' cellspacing='7' cellpadding='3'>";
		echo "<tr><td>Código del amigo</td><td>Nombre</td><td>Apellido 1</td><td>Apellido 2</td><td>Población</td><td>Teléfono</td><td>email</td></tr>";
		while(false !== ($car=fgets($fp))){
			$linea=explode("#",$car);
			echo "<tr>";
			for($i=0;$i<count($linea);$i++){
				echo "<td>".$linea[$i]."</td>";
			}
			echo "</tr>";
		}
		fclose($fp); 
		echo "</table>";
	}
}

listar();
?>
	</div>
  </div>
</section>
</body>
</html>