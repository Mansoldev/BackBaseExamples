<?php
$proxima_semana = time() + (7 * 24 * 60 * 60);
// 7 dias; 24 horas; 60 mins; 60segs
echo 'Ahora: '. date('Y-m-d') ."<br>";
echo 'Proxima Semana: '. date('d-m-Y', $proxima_semana) ."<br>";
echo "proxima semana valor: $proxima_semana";
?>