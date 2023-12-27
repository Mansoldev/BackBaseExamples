<table border=2 align=center>
<tr><td colspan=7 align=center> <h3>Listado de potencias </h3></td></tr>
<tr><td>Número</td> <td>0</td><td>1</td><td>2</td><td>3</td><td>4</td><td>5</td></tr>

<?php
// Primeras potencias de los primeros 10 números.

for($numero=1;$numero<=10;$numero++){
	echo "<tr>";
	$res=1;
	echo '<td>'.$numero.'</td>';
	for($i=0;$i<=5;$i++){
		echo '<td>'.$res.'</td>';
		$res*=$numero;
	}
	echo '</tr>';
		
}
?>
</table>