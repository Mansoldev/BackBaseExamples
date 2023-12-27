<h2 align='center'>NUMEROS PRIMOS</h2>
<table border='1'>

<?
$es="";
for($i=1;$i<=100;$i++){
	echo "<tr>";
	for($j=$i-1;$j>=2;$j--){
		$es="si";
		if ($i%$j==0){
			$es="no";
		}elseif($i==1 or $i==2){
			$es="si";
		}
	}
	if($es=="si"){
		echo "<td>$i</td>";
	}elseif($es=="no"){
		echo "<td><p><strike>$i</strike></p></td>";
	}
	if ($i%10==0){
		echo "</tr>";
	}
}
?>

</table>