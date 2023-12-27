<?php
$proxima_semana = time() + (7 * 24 * 60 * 60);
// 7 dias; 24 horas; 60 mins; 60segs
echo 'Ahora: '. date('Y-m-d') ."<br>";
echo 'Proxima Semana: '. date('d-m-Y', $proxima_semana) ."<br>";
echo "proxima semana valor: $proxima_semana"."<br>";

$fecha_nacimiento=mktime(8,0,0,9,10,1994);
echo 'Ahora: '. date('l jS \of F \of Y ',$fecha_nacimiento) ."<br>";

?>