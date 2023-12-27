
<?php
// ejercicios para trabajar tema 1.
// Realiza un programa que dado un dni calcule cual es su letra.

$tablanif="TRWAGMYFPDXBNJZSQVHLCKE";
$dni=4178583;
$letraNIF=substr($tablanif,$dni%23,1);
echo "<br>Su NIF es: $dni - $letraNIF ";
?>