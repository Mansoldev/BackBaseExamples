<?php
$fp = fopen('Nov92015.log', 'r');
if (!$fp) {
echo 'No se pudo abrir Nov92015.log';
}
while (false !== ($caracter = fgetc($fp))) {
echo "$caracter";
}
?>