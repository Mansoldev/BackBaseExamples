<?php
//print_r($_REQUEST);
$cadena=strtoupper($_REQUEST['Nombre']."#".$_REQUEST['Apellidos']."#".$_REQUEST['Ciudad']."#".$_REQUEST['Movil']."#").strtolower($_REQUEST['Email'])."#\r\n";
//echo $cadena;
if(file_exists("files\contactos.txt")){
$fp=fopen("files/contactos.txt","r");
if(!$fp)
   {echo "Error al Abrir el fichero.<a href='index.html'> Volver</a>.";
   }
else
   {$encontrado=false;
    while(false !== ($car=fgets($fp)))
	  {
	   $linea=explode("#",$car);
	   if($linea[3]==$_REQUEST['Email']){
		   $encontrado=true;
		}	   
	  }
	fclose($fp);
	if($encontrado==true)
	   {echo "Existe un usario con el mismo email.<a href='index.html'> Volver</a>.";
	   }
	else
	   {$fp=fopen("files/contactos.txt","a");
	    fputs($fp,$cadena);
        fclose($fp);
	    echo "Registro guardado.<a href='index.html'> Volver</a>.";
	   }
   }
}else{
		$fp=fopen("files/contactos.txt","a");
	    fputs($fp,$cadena);
        fclose($fp);
	    echo "Registro guardado.<a href='index.html'> Volver</a>.";	
	
}

?>
<h4 align="center">VOLVER AL <A href="index.html">INDICE</A> </h4>