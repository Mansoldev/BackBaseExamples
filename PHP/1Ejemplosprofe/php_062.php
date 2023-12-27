
<?php
// Realiza un para trabajar con el orden de los arrays.

$tabla=array_fill(10,5,"ASIR");

$tabla=range(1,9);
echo '<br> Array original<br>';
print_r($tabla);
echo '<br> Array ordenado <br>';
sort($tabla);
print_r($tabla);
echo '<br> Array desordenado <br>';
shuffle($tabla);
print_r($tabla);

?>