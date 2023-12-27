<?php
//print_r($_REQUEST);
$cadena=strtoupper($_REQUEST['Nombre']."#".$_REQUEST['Apellidos']."#".$_REQUEST['Ciudad']."#".$_REQUEST['Movil']."#").strtolower($_REQUEST['Email'])."#\r\n";
//echo $cadena;
if(file_exists("files\contactos.txt")){
	$fold=fopen("files\contactos.txt","r");
	$fnew=fopen("files\contactosnew.txt","w");
	if(!$fold || !$fnew){
		echo "Error al Abrir archivos. <a href='index.html'> Volver</a>.";
	}else{
		echo "bien<br>";
		$num=1;
		while(false !== ($registro=fgets($fold))){
			if($num!=$_REQUEST['numReg']){
				fputs($fnew,$registro);
			}else{
				fputs($fnew,$cadena);
			}	   
			$num++;
		}
		fclose($fold);
		fclose($fnew);
		rename("files\contactos.txt","files\contactosbak.txt");
		rename("files\contactosnew.txt","files\contactos.txt");
		echo "Registro modificado.<a href='index.html'> Volver</a>.";
	}
}else{
	echo "error de archivos<br>";
}

?>
<h4 align="center">VOLVER AL <A href="index.html">INDICE</A> </h4>