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
$media1=0;
$media2=0;
//$mediaCurso=0;
foreach($alumno as $modulo => $notas){
	$media=($notas[0]+$notas[1])/2;
	echo "<tr><td>$modulo</td><td>$notas[0]</td><td>$notas[1]</td><td>$media</td></tr>";
	$media1+=$notas[0];
	$media2+=$notas[1];
//	$mediaCurso+=$media;
}
$media1/=6;
$media2/=6;
$mediaCurso=($media1+$media2)/2;
echo "<tr><th>MEDIAS</th><td>$media1</td><td>$media2</td><td>$mediaCurso</td></tr>";
echo '</table>';
?>
