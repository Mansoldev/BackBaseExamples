<?php
//print_r($_POST);

$fp=fopen("files/moviles.txt","r");
if(!$fp)
   {echo "Error al Abrir el fichero.";
   }
else
   {echo "<table border='1' cellspacing='5' cellpadding='3'>";
	while(false !== ($car=fgets($fp)))
	  {
	   $linea=explode("#",$car);
	   
	   if(($_POST['desde'] <= $linea[2] && $_POST['hasta'] >= $linea[2])
	       && ($_POST['marca']=="Todas" || $_POST['marca']==$linea[0] ))
			{echo "<tr>";
			 for($i=0;$i<count($linea);$i++)
				{echo "<td>".$linea[$i]."</td>";
				}
			 echo "</tr>";
			}
	  }
    fclose($fp); 
	echo "</table>";
	}



?>