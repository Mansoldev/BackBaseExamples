<?

for($i=1;$i<=10;$i++){
	echo "<table border='1'>";
	echo "<tr><td colspan='5'><center><h3> TABLA $i </h3></center></td></tr>";
	for($j=1;$j<=10;$j++){
		$res=$i*$j;
		echo "<tr>";
		echo "<td>$i</td>";
		echo "<td>X</td>";
		echo "<td>$j</td>";
		echo "<td>=</td>";
		echo "<td>$res</td>";
		echo "</tr>";
	}
	echo "</tr>";
	echo "</table>";
	echo "<br/>";
}

?>