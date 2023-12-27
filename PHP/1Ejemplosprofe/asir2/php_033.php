<?php
// ejemplos con arrays o vectores.
// declaración del vector con el constructor.
$ciudades=array("Talavera de la Reina","Toledo","Ciudad Real","Albacete","Guadalajara");
echo $ciudades[1].'<br>';
$ciudades[1]="Cuenca";
echo $ciudades[1].'<br>';
// imprimir todo con un bucle for
for($i=0;$i<count($ciudades);$i++){
	echo $i."º:".$ciudades[$i].'<br>';
}
echo "<br>También podemos imprimir el vector entreo con print_r<br>";
print_r($ciudades);
// mostramos información sobre el tipo, y el contenido de variables con var_dump 
echo '<br>';
var_dump($i);
echo '<br>';
var_dump($ciudades);
?>