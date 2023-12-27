<?php
$alumno =  array  ( "IAW"  => array (6,7),
					"ABD"  => array (5,8),
					"EIE"  => array (8,9),
					"ASO"  => array (8,8),
					"SRI"  => array (9,8),
					"SAD"  => array (9,9));


reset($alumno);
echo "<table border=2 align=center><tr><th colspan=4> Notas del Alumno </th></tr>";
echo "<tr><th> Módulo </th> <th> 1ª Evaluación </th> <th> 2ª Evaluación </th> <th> Final </th></tr>";
foreach($alumno as $modulo => $listaNotas){
//	echo '<tr><td>'.$modulo.'</td>'; es equivalente a la siguiente línea
	echo "<tr><td>$modulo</td>";
	$media=0;
	foreach($listaNotas as $nota){
		$media+=$nota;
		echo "<td>$nota</td>";
	}
	$media/=2; // es lo mismo que $media=$media/2
	echo "<td>$media</td></tr>";
}
echo '</table>';
?>
