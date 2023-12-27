<?php
for($i=1;$i<=10;$i++){
	echo "<h3> TABLA $i</h3>";
	for($j=1;$j<=10;$j++){
		$res=$i*$j;
		echo "$i x $j = $res <br>";
	}
	echo "<br>";
}

?>