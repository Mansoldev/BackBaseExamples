<?
$DiasMes = array ('Enero' => 31, 'Febrero' => 28, 'Marzo' => 31, 'Abril' => 30,'Mayo' => 31, 'Junio' => 30, 'Julio' => 31, 'Agosto' => 31,
'Septiembre' => 30, 'Octubre' => 31, 'Noviembre' => 30,'Diciembre' => 31);

echo "<h2>Dias del mes</h2>";
reset($DiasMes);
do{
	echo key($DiasMes)." tiene ".current($DiasMes)." dias.<br/>";
}while(next($DiasMes))
?>