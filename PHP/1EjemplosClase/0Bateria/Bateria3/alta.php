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
	section				{background-color:#fff;width:50%;margin:auto;}
	a>button			{width:50%;margin:auto;}
	</style>
</head>
<body>
<section>
<?
if(!isset($_REQUEST['name']) || !isset($_REQUEST['ap1']) || !isset($_REQUEST['ap2']) || !isset($_REQUEST['city']) || !isset($_REQUEST['tel']) || !isset($_REQUEST['mail']))
{
	echo "<div class='alert alert-warning alert-dismissable'><button type='button' class='close' data-dismiss='alert'>&times;</button><strong>¡ERROR!</strong> No hay has compeltado todos los datos del formulario</div><a href='alta.html'>
			<div><button type='button' class='btn btn-info btn-lg'>VOLVER A ALTA.HTML</button></a></div><br><br>";
}
else
{


$archivo='users.txt';
if(!file_exists($archivo)){
	$control=fopen("users.txt","w+");
	$asc="";
	fwrite($control,$asc);
	fclose($control);
}

$fp=fopen("users.txt","r");
if(!$fp){
	echo ("<div class='alert alert-warning alert-dismissable'><button type='button' class='close' data-dismiss='alert'>&times;</button><strong>¡Cuidado!</strong> No se ha podido leer el fichero</div><a href='alta.html'><button type='button' class='btn btn-info btn-lg'>VOLVER A ALTA.HTML</button></a><br><br>");
}else{
	$estadisticas=stat('users.txt');
	if ($estadisticas['size']==0){
		$cod=1;
	}else{
		while(!feof($fp)){
			$linea=fgets($fp);
			if($linea!=""){
				$atodo=explode("#",$linea);
				$cod=$atodo[0]+1;
			}else{
				$cod=1;
			}
		}
	}
	$name=$_REQUEST['name'];
	$ap1=$_REQUEST['ap1'];
	$ap2=$_REQUEST['ap2'];
	$city=$_REQUEST['city'];
	$tel=$_REQUEST['tel'];
	$mail=$_REQUEST['mail'];
	$repe=false;
	rewind($fp);
	while(!feof($fp)){
		$linea=fgets($fp);
		if($linea==""){
			break;
		}else{
			$atodo=explode("#",$linea);
			if($tel==$atodo[5]){
				$repe=true;
			}
		}
	}
	fclose($fp);
}

if($repe==true){
	echo ("<div class='alert alert-warning alert-dismissable'><button type='button' class='close' data-dismiss='alert'>&times;</button><strong>¡Cuidado!</strong> Has incluido un amigo que ya tienes</div><a href='alta.html'><button type='button' class='btn btn-info btn-lg'>VOLVER A ALTA.HTML</button></a><br><br>");
}else{
	$nuevo="$cod#$name#$ap1#$ap2#$city#$tel#$mail\r\n";
	$fp=fopen("users.txt","a");
	fputs($fp,$nuevo);
	fclose($fp);
	echo "<div class='alert alert-success'><button type='button' class='close' data-dismiss='alert'>&times;</button>$name agregado a la agenda.</div><a href='alta.html'><button type='button' class='btn btn-info btn-lg'>VOLVER A ALTA.HTML</button></a><br><br>";
}
	
	
	
}
?>
</section>
</body>
</html>