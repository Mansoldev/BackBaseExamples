
<?php
// Realiza un para trabajar con el orden de los arrays.

$tabla=array('b','r','A','H','Z','C','4','z','Ñ');
echo '<br> Array original<br>';
print_r($tabla);
echo '<br> Array ordenado <br>';
sort($tabla);
print_r($tabla);
echo '<br> Array desordenado <br>';
shuffle($tabla);
print_r($tabla);

?>