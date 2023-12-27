<?php
$ciudades = array ("España" => array ("Madrid","Barcelona","Sevilla"),
"Italia" => array ("Roma","Milán","Venecia"),
"Holanda" => array ("Amsterdam","Rotterdam"));

reset($ciudades);
while(list ($k1,$vp) = each ($ciudades)){
	echo "<br>  País: $k1 <br>";
	while(list ($k2,$vc) = each($vp)){
		print("Indice ciudad: ".$k2." Ciudad: ".$vc."<br>");
	}
}
?>
