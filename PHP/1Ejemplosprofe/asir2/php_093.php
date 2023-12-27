<?php
$nombre_archivo = 'files';
if (is_readable($nombre_archivo)) {
echo 'El archivo es legible';
} else {
echo 'El archivo no es legible';
}
?>