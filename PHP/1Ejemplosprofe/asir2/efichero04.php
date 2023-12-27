<?php
/* Obtener las estadísticas de un archivo */
$estadisticas = stat('files/prueba2.txt');
/*
* Imprime el momento de acceso del archivo,
*/
echo 'Momento de acceso: ' . date('d - m - Y',$estadisticas['atime']);
/*
* Imprime el momento de modificación del archivo,
*/
echo 'Momento de modificación: ' . date('d - m - Y',$estadisticas['mtime']);
/* Imprime el tamaño */
echo 'Tamaño: ' . $estadisticas['size'];
var_dump($estadisticas);
?>