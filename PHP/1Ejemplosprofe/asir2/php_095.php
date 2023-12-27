<?php
$nombre_archivo = 'files/install.exe';
if (is_executable($nombre_archivo)) {
echo 'El archivo es ejecutable';
} else {
echo 'El archivo no es ejecutable';
}
?>