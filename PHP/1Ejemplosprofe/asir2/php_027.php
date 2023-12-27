<?php
for($i=1;$i<=10;$i++){
	echo '<table border=2 align="center">';
	echo "<tr><td colspan=5><h3> TABLA $i</h3></td></tr>";
	for($j=1;$j<=10;$j++){
		$res=$i*$j;
		echo "<td>$i</td><td> x </td><td>$j</td><td> = </td><td>$res</td></tr>";
	}
	echo "</table><br>";
}

?>