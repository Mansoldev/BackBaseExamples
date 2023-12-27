<?
echo "<h2 align='center'>TABLERO DE AGEDREZ</h2>";
echo "<table border='1'>";
$poten=1;
$total=0;
for($i=1;$i<=8;$i++){
	echo "<tr>";
	for($j=1;$j<=8;$j++){
		$total=$total+$poten;
		echo "<td>$poten</td>";
		$poten=$poten*2;
	}
	echo "</tr>";
}
	echo "</table>";
	echo "<br/>";
	echo "El TOTAL ES: ".$total;

?>