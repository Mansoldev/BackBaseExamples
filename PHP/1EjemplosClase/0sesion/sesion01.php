<?php
session_start(); 
if (!isset($_SESSION["cuenta_paginas"])){ 
   	$_SESSION["cuenta_paginas"] = 1; 
}else{ 
   	$_SESSION["cuenta_paginas"]++; 
} 

if (isset($_SESSION['visitadas'])){
	$_SESSION['visitadas'].="- página1";
}else{
	$_SESSION['visitadas']="- página1";
}
echo "<h2> PÁGINA 1 </h2>";
echo "<a href='sesion02.php'>Click para cambiar a página 2</a><br>";
echo "<a href='sesion03.php'>Click para cambiar a página 3</a><br>";
echo "<a href='sesion04.php'>Click para cambiar a página 4</a><br>";
echo "<a href='reiniciar.php'>Reiniciar</a><br>";
echo "<br>Número de páginas visitadas: ".$_SESSION["cuenta_paginas"];
echo "<br>Páginas visitadas: ".$_SESSION["visitadas"];
?>
