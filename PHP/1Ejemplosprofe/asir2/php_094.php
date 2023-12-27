<?php
$nombre_archivo = 'files/datos de clase.txt';
if (is_writable($nombre_archivo)) {
echo 'El archivo es escribible';
} else {
echo 'El archivo no es escribible';
}
?>