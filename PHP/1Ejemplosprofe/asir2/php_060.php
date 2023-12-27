
<?php
// Realiza un para trabajar con el orden de los arrays.

$tabla=array(2,5,9,3,5,7,9,100,55);
echo '<br> Array original<br>';
print_r($tabla);
echo '<br> Array ordenado <br>';
sort($tabla);
print_r($tabla);
echo '<br> Array desordenado <br>';
shuffle($tabla);
print_r($tabla);

?>