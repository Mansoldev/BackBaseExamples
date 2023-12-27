<?php
session_start();
$valido=false;
if(isset($_POST['usuario']) && isset($_POST['clave']))
    {
	 $f=fopen("files/users.txt","r");
	 if($f)
       {
			while(false !==($cadena=fgets($f)))
			   {
			    if(strlen($cadena) > 3)//para evitar cadenas sin datos
				  {
					$linea=explode("#",trim($cadena));
					if($_POST['usuario']==$linea[0] &&
					   $_POST['clave']==$linea[1])
					   {
						$valido=true;
						$_SESSION['usuario']=$_POST['usuario'];
						$_SESSION['nombre']=$linea[2];
						$_SESSION['carpeta']=$linea[3];
					   
					   }
				  } 
			   }
		fclose($f);
       } 	   
	
	}
if($valido==true)
   {
     echo "<script>location.href='php_101a.php';</script>";
   }
else
   {
     echo "<script>alert('Usuario o clave incorrectos.');location.href='php_101.html';</script>";
   }

?>