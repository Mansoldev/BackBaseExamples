<?php
//print_r($_POST);
$cadena=$_POST['marca']."#".$_POST['modelo']."#".$_POST['precio']."#".$_POST['stock']."\r\n";
//echo $cadena;
$fp=fopen("files/moviles.txt","a");
if(!$fp)
   {echo "Error al Abrir el fichero.<a href='movil.html'> Volver</a>.";
   }
else
   {fputs($fp,$cadena);
    fclose($fp);
	echo "Registro guardado.<a href='movil.html'> Volver</a>.";
   }


?>