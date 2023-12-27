<?
$DiasMes = array ('Enero' => 31, 'Febrero' => 28, 'Marzo' => 31, 'Abril' => 30,
'Mayo' => 31, 'Junio' => 30, 'Julio' => 31, 'Agosto' => 31,
'Septiembre' => 30, 'Octubre' => 31, 'Noviembre' => 30,
'Diciembre' => 31);
echo "Días de cada mes<br>";
print_r($DiasMes);
// ordena de mayor a menor
arsort($DiasMes);

echo '<br>';
print_r($DiasMes);
echo '<br>';
foreach($DiasMes as $mes => $ndias){
	echo "<br>$mes tiene $ndias días";
}


?>