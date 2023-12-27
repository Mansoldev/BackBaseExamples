<?
echo "<h2>Lista de potencias</h2>";
echo "<table border='1'>";
for($i=0;$i<=10;$i++){

	echo "<tr>";
	echo "<td>$i</td>";
	for($j=1;$j<=10;$j++){
		$res=$i**$j;
		if ($i==0){
			echo "<td>$j</td>";
		}else{
			echo "<td>$res</td>";
		}
	}
	echo "</tr>";

}
	echo "</table>";
	echo "<br/>";

?>