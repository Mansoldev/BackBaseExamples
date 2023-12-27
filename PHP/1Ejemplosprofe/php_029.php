<table border=2 align=center>

<?php
// Problema de la invención del ajedrez.
$res=1;
$total=0;
for($j=1;$j<=8;$j++){
	echo "<tr>";
	for($i=1;$i<=8;$i++){
		echo '<td>'.$res.'</td>';
		$total+=$res;
		$res*=2;
	}
	echo '</tr>';		
}
echo '</table>';
echo " El numero de granos total es $total";
?>