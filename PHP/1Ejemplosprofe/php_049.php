<?php
$ciudades =  array ("España"  => array ("Madrid","Barcelona","Sevilla"),
					"Italia"  => array ("Roma","Milán","Venecia"),
					"Holanda" => array ("Amsterdam","Rotterdam"));


reset($ciudades);
foreach($ciudades as $k1 => $listaCiudades){
	echo '<br>País: '.$k1.'<br>';
	foreach($listaCiudades as $ciudad){
		echo $ciudad.'<br>';
	}
	
}
?>
