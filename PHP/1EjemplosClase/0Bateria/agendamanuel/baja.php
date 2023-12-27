<?php
//var_dump($_REQUEST);
$registros=$_REQUEST["numReg"];

if(file_exists("files\contactos.txt")){
	$fold=fopen("files\contactos.txt","r");
	$fnew=fopen("files\contactosnew.txt","w");
	if(!$fold || !$fnew){
		echo "Error de apertura de archivos.";
	}else{
		$numero=1;
		while (false!==($registro=fgets($fold))){
			$encontrado=false;
			for($i=0;$i<count($registros)&& !$encontrado;$i++){
				echo intval($registros[$i])." - $numero<br>";
				if($registros[$i]==$numero){ 
						$encontrado=true;
				}
			}
			if(!$encontrado)	fputs($fnew,$registro);
				
			$numero++;
		}
		fclose($fold);
		fclose($fnew);
		rename("files\contactos.txt","files\contactobak.txt");
		rename("files\contactosnew.txt","files\contactos.txt");

	
	}
   	
}

?>
<h4 align="center">VOLVER AL <A href="index.html">INDICE</A> </h4>