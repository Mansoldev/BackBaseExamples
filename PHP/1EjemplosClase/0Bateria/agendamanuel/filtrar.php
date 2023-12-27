<?php
//print_r($_REQUEST);
echo"<h4>La ciudad seleccionada es: $_REQUEST['Ciudad'] y el número máximo de registros:$_REQUEST['numMaxReg]<br></h4>"
$fp=fopen("files/contactos.txt","r");
if(!$fp)
   {echo "Error al Abrir el fichero.";
   }
else
   {echo "<table border='1' cellspacing='5' cellpadding='3' align='center'>";
	$Tope=0;
	while((false !== ($cadena=fgets($fp)))&& $Tope<$_REQUEST['numMaxReg'])
	  {
	   $linea=explode("#",$cadena);
	   
	   if($_REQUEST['Ciudad']==$linea[2] || $_REQUEST['Ciudad']=='Todas')
			{echo "<tr>";
			 for($i=0;$i<count($linea)-1;$i++)
				{echo "<td>".$linea[$i]."</td>";
				}
			 echo "</tr>";
			}
			$Tope++;
		}
    fclose($fp); 
	echo "</table>";
	}



?>