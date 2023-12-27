<?php

$cuantos=count($_FILES['fichero']['name']);

for($i=0; $i<$cuantos;$i++)
   {echo $_FILES['fichero']['name'][$i]." Ocupa:".$_FILES['fichero']['size'][$i]." bytes<br />";
	echo $_FILES['fichero']['name'][$i]." Su nombre temporal es:".$_FILES['fichero']['tmp_name'][$i]."<br />";
	echo $_FILES['fichero']['name'][$i]." Su nombre tipo es:".$_FILES['fichero']['type'][$i]."<br />";
	echo "<br />";
   }

$tamMAX=2000000;
$ruta="datos\\";
for($i=0; $i<$cuantos;$i++){
if(!empty($_FILES['fichero']['tmp_name'][$i]))
 {
	if($_FILES['fichero']['size'][$i] > $tamMAX)
	  {echo "<br />Fichero NO valido. Ocupa:".$_FILES['fichero']['size'][$i];
	  }
	else
	  {$destino=$ruta.$_FILES['fichero']['name'][$i];
	   if(move_uploaded_file($_FILES['fichero']['tmp_name'][$i],$destino)==true)
	      { echo "Fichero cargado con exito.";
		  }
	   else
	      { echo "Error al mover el fichero..";
		  }
	  }
 }
else
 {echo "fichero temporal vacio";
 } 
}
?>
