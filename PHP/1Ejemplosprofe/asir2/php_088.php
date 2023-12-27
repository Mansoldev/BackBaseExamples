<?php
$nombre_archivo = 'info.php';
if (file_exists($nombre_archivo)) {
echo "La última modificación de $nombre_archivo fue: " . date ("F d Y H:i:s.", filemtime($nombre_archivo));
}
?>