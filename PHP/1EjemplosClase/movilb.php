<?php
//print_r($_POST);
$cadena=$_POST['marca']."#".$_POST['modelo']."#".$_POST['precio']."#".$_POST['stock']."\r\n";
//echo $cadena;
$fp=fopen("files/moviles.txt","r");
if(!$fp)
   {echo "Error al Abrir el fichero.<a href='movil.html'> Volver</a>.";
   }
else
   {$encontrado=false;
    while(false !== ($car=fgets($fp)))
	  {
	   $linea=explode("#",$car);
	   if($linea[0]==$_POST['marca'] && $linea[1]==$_POST['modelo'])
		{$encontrado=true;
		}	   
	  }
	fclose($fp);
	if($encontrado==true)
	   {echo "Error el telefono ya existe.<a href='movil.html'> Volver</a>.";
	   }
	else
	   {$fp=fopen("files/moviles.txt","a");
	    fputs($fp,$cadena);
        fclose($fp);
	    echo "Registro guardado.<a href='movil.html'> Volver</a>.";
	   }
   }


?>